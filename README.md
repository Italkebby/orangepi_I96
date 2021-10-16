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

- Remove all audio driver
  That don't let reboot again the i96 because it want to load audio driver but it hasn't got any audio chip.
- IP spam in serial port untill you'll login
  After had copied some text by using right click in serial COM command window you will encounter "ttyS0: 93 input overrun(s)",
  so I suggest you to use ssh IP instehead of serial port, you'll can find its IP without login.
- The power button will be used to shutdown the sistem
- Fix GPIO by using this script (so many thanks) http://wiki.pbeirne.com/patb/i96
