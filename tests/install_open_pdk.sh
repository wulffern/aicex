
git clone https://github.com/RTimothyEdwards/open_pdks
cd open_pdks
./configure --enable-sky130-pdk --prefix=/opt/pdk/ \
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
