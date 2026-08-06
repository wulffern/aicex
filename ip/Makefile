
dirs = lelo_gr01_sky130a \
	lelo_gr02_sky130a \
	lelo_gr03_sky130a \
	lelo_gr04_sky130a

CMD="make drc cdl lvs OPT='--short'"
DESIGN_EXTS_RE = \.(sch|sym|spi|spice|sp|cir|meas|mag|maglef|lef|v|sv|vh|svh|py|tcl|yaml|yml|json|md)$$

.PHONY: lelo command committers committers-repo

lelo:
	${foreach d, ${dirs}, ${MAKE} command DIR=${d}/work CMD="${CMD}"; }

command:
	cd ${DIR} && ${CMD}

# List commit counts, design-file changed lines, and normalized points by author for all IP repositories in dirs.
# Use NAME=lelo_gr02_sky130a to report a single repository.
committers:
ifdef NAME
	@${MAKE} --no-print-directory committers-repo DIR=${NAME}
else
	@${foreach d, ${dirs}, ${MAKE} --no-print-directory committers-repo DIR=${d}; }
endif

committers-repo:
	@if [ ! -d "$(DIR)" ]; then \
		echo "Directory not found: $(DIR)"; \
		exit 1; \
	fi
	@printf "\n%s\n" "$(DIR)"
	@printf "%8s %10s %8s %8s %8s  %s\n" "commits" "lines" "c_pts" "l_pts" "avg_pts" "author"
	@git -C "$(DIR)" log --all --numstat --format='author:%aN <%aE>' | awk -F "\t" -v design_exts='$(DESIGN_EXTS_RE)' ' \
		/^author:/ { author = substr($$0, 8); commits[author]++; authors[author] = 1; next } \
		$$1 ~ /^[0-9]+$$/ && $$2 ~ /^[0-9]+$$/ && $$3 ~ design_exts { lines[author] += $$1 + $$2 } \
		END { \
			for (author in authors) { \
				if (commits[author] > max_commits) { max_commits = commits[author] } \
				if (lines[author] > max_lines) { max_lines = lines[author] } \
			} \
			for (author in authors) { \
				c_pts = max_commits ? 5 * commits[author] / max_commits : 0; \
				l_pts = max_lines ? 5 * lines[author] / max_lines : 0; \
				avg_pts = (c_pts + l_pts) / 2; \
				printf "%8d %10d %8.2f %8.2f %8.2f  %s\n", commits[author], lines[author], c_pts, l_pts, avg_pts, author; \
			} \
		}' | sort -k5,5nr -k1,1nr
