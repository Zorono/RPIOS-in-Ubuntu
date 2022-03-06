echo "deb https://archive.raspberrypi.org/debian/ bullseye main" | sudo tee -a /etc/apt/sources.list
wget -q -O - https://archive.raspberrypi.org/debian/raspberrypi.gpg.key  | sudo apt-key add -
sudo apt-get update

sudo apt-mark hold bluez-firmware
sudo apt-mark hold flashrom
sudo apt-mark hold libraspberrypi0
sudo apt-mark hold libraspberrypi-bin
sudo apt-mark hold pi-bluetooth
sudo apt-mark hold rpi-eeprom
sudo apt-mark hold raspberrypi-bootloader
sudo apt-mark hold raspberrypi-kernel
sudo apt-mark hold raspberrypi-sys-mods

sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libbcm_host.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libvcos.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libmmal.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libmmal_core.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libmmal_components.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libmmal_util.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libmmal_vc_client.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libvchiq_arm.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libvcsm.so -P /usr/lib
sudo wget https://github.com/raspberrypi/firmware/raw/master/opt/vc/lib/libcontainers.so -P /usr/lib

sudo apt-get install rpi-imager VNC-Server rp-bookshelf raspi-gpio realvnc-vnc-viewer raspi-config
