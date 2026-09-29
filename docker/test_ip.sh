#!/bin/bash
# Prove an aicex image on one IP: the same steps the jnw-actions drc, lvs
# and sim actions run, in the same order, from a fresh clone.
#
#   test_ip.sh <https-url> [lvs|nolvs]
#
# Fails on DRC errors, or on an LVS mismatch unless the second argument
# is `nolvs` (an IP whose LVS is known not to match -- the point there is
# that the tools RUN). Sims are reported, not judged: several IPs fail
# their sims today in every image, so a sim failure says nothing about
# the image.
set -u
url=$1; want_lvs=${2:-lvs}
ip=$(basename $url .git)
export PDK_ROOT=/opt/pdk/share/pdk
export PATH=/opt/eda/bin:/opt/eda/python3/bin:$HOME/.local/bin:$PATH
sum=${GITHUB_STEP_SUMMARY:-/dev/stdout}
fail=0

mkdir -p /work && cd /work
git clone -q --depth 1 $url $ip || { echo "clone failed"; exit 1; }
cd $ip
python3 -m pip install -q cicconf cicsim
cicconf --rundir ../ --config config.yaml clone --https > /dev/null
read cell lib < <(python3 -c "import yaml;d=yaml.safe_load(open('info.yaml'));print(d.get('cell',''), d.get('library',''))")
echo "## $ip ($cell)" >> $sum

(cd work && make drc CELL=$cell LIB=$lib) > drc.out 2>&1
last=$(tail -n 1 work/drc/${cell}_drc.log 2>/dev/null)
echo "- drc: ${last:-no log}" >> $sum
[[ "$last" =~ :\ +0$ ]] || fail=1

(cd work && make cdl lvs CELL=$cell LIB=$lib) > lvs.out 2>&1
res=$(grep -h 'Final result' work/lvs/${cell}_lvs.log 2>/dev/null | tail -1)
echo "- lvs: ${res:-no result}" >> $sum
if [ "$want_lvs" = lvs ] && [[ "$res" != *"match uniquely"* ]]; then fail=1; fi

(cd work && make lpe CELL=$cell LIB=$lib) > lpe.out 2>&1
echo "- lpe: exit $?" >> $sum

if python3 -c "import yaml,sys;sys.exit(0 if 'sim' in yaml.safe_load(open('info.yaml')) else 1)"; then
  echo "set ngbehavior=hsa\nset ng_nomodcheck \nset skywaterpdk \n set num_threads=8 \n option noinit \n option klu \n optran 0 0 0 100p 2n 0 \n option opts" > $HOME/.spiceinit
  git clone -q --depth 1 https://github.com/analogicus/jnw-actions /tmp/jnw-actions
  python3 /tmp/jnw-actions/sim/runsim --info info.yaml > sim.out 2>&1
  echo "- sim: exit $?, $(grep -ci 'Error:' sim.out) error lines (reported, not judged)" >> $sum
fi

for f in drc lvs lpe sim; do
  [ -f $f.out ] && { echo "::group::$f"; tail -40 $f.out; echo "::endgroup::"; }
done
exit $fail
