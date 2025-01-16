
export PDK_ROOT=/opt/pdk/share/pdk
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH



#- Pre install skywater pdk
sudo mkdir /opt/pdk
sudo chmod 777 /opt/pdk
cd /opt/pdk
git clone https://github.com/google/skywater-pdk
cd skywater-pdk
git pull
git submodule init libraries/sky130_fd_io/latest
git submodule init libraries/sky130_fd_pr/latest
#Skip most of the libraries, usully not needed for analog design
#git submodule init libraries/sky130_fd_sc_hd/latest
#git submodule init libraries/sky130_fd_sc_hvl/latest
git submodule update
make timing
cd /opt/pdk

#- Use open pdk to install pdk
git clone https://github.com/RTimothyEdwards/open_pdks
cd open_pdks
./configure --enable-sky130-pdk=/opt/pdk/skywater-pdk --prefix=/opt/pdk/ \
    --enable-irsim=no \
    --enable-openlane=no \
    --enable-qflow=no \
    --enable-alpha-sky130=no \
    --enable-io-gf180mcu=no \
    --enable-sc-7t5v0-gf180mcu=no \
    --enable-sc-9t5v0-gf180mcu=no \
    --enable-sram-gf180mcu=no
make
sudo make install

#- Patch missing metal resistor
#sudo cp /opt/pdk/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_generic_li.sym  /opt/pdk/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_generic_l1.sym
