The Others repo to get files:

git clone http://wiki.pbeirne.com/patb/i96 gpio_fix

git clone https://github.com/radii/devmem2.git

I include a version from those repos

INSTALL 

nmtui for connect to internet

git this repo to download all script

git clone https://github.com/Italkebby/orangepi_I96

launch the file install.sh
https://github.com/Italkebby/orangepi_I96/blob/master/install.sh

it will perform these stuff:

- Remove all audio driver. that don't let reboot again the i96 because it want to load audio driver but it hasn't got any audio chip.
- IP spam in serial port untill you'll login. After had copied some text by using right click you will encounter an error so I suggest you to use ssh IP and not serial port
- The power button will be used to shutdown the sistem
- Fix GPIO by using this script (so many thanks) http://wiki.pbeirne.com/patb/i96
