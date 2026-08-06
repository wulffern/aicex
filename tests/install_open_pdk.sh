
export PDK_ROOT=/opt/pdk/share/pdk
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH



#- Pre install skywater pdk
test -f /opt/pdk || sudo mkdir /opt/pdk
sudo chmod 777 /opt/pdk
#cd /opt/pdk
#git clone https://github.com/google/skywater-pdk
#cd skywater-pdk
#git pull
#git submodule init libraries/sky130_fd_io/latest
#git submodule init libraries/sky130_fd_pr/latest
#Skip most of the libraries, usully not needed for analog design
#git submodule init libraries/sky130_fd_sc_hd/latest
#git submodule init libraries/sky130_fd_sc_hvl/latest
#git submodule update
#make timing
cd /opt/pdk

#- Use open pdk to install pdk

test -f open_pdks || git clone https://github.com/RTimothyEdwards/open_pdks.git

cd open_pdks && \
          ./configure --prefix=/opt/pdk --enable-sky130-pdk --with-sky130-variants=A \
            --enable-primitive-sky130 --enable-sc-hd-sky130 \
            --disable-io-sky130 --disable-sc-hs-sky130 --disable-sc-ms-sky130 --disable-sc-ls-sky130 \
            --disable-sc-lp-sky130 --disable-sc-hdll-sky130 --disable-sc-hvl-sky130 --disable-alpha-sky130 \
            --enable-xschem-sky130 \
            --disable-gf180mcu-pdk --disable-primitive-gf180mcu \
            --disable-verification-gf180mcu --disable-klayout-gf180mcu --disable-io-gf180mcu \
            --disable-sc-7t5v0-gf180mcu --disable-sc-9t5v0-gf180mcu --disable-sram-gf180mcu \
            --disable-alpha-gf180mcu --disable-osu-sc-gf180mcu --disable-avalon-sc-gf180mcu \
            --disable-ocd-io-gf180mcu --disable-ocd-sram-gf180mcu \
            && make && sudo make install
#git clone https://github.com/RTimothyEdwards/open_pdks
#cd open_pdks
#git pull
#./configure --enable-sky130-pdk=/opt/pdk/skywater-pdk --prefix=/opt/pdk/ \
#    --enable-irsim=no \
#    --enable-openlane=no \
#    --enable-qflow=no \
#    --enable-alpha-sky130=no \
#    --enable-io-gf180mcu=no \
#    --enable-sc-7t5v0-gf180mcu=no \
#    --enable-sc-9t5v0-gf180mcu=no \
#    --enable-sram-gf180mcu=no
#make
#sudo make install

#- Patch missing metal resistor
#sudo cp /opt/pdk/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_generic_li.sym  /opt/pdk/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_generic_l1.sym
