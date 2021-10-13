echo setto il tasto per il shutdown
sudo apt update 
sudo apt install aptitude -y
sudo aptitude install acpid -y
cd /etc/acpi/
touch shutdown.sh

echo "event=button/power" | sudo tee -a shutdown.sh > /dev/null
echo "action=/sbin/shutdown -h now" | sudo tee -a shutdown.sh > /dev/null
sudo chmod +x shutdown.sh
cp shutdown.sh events/
cd events
mv shutdown.sh button_power
sudo /etc/init.d/acpid restart


echo "fixo le gpio"
sudo apt install git --upgrade
git -c http.sslVerify=false clone http://wiki.pbeirne.com/patb/i96 gpio_fix
git -c http.sslVerify=false clone https://github.com/radii/devmem2.git
cd devmem2
gcc devmem2.c -o devmem2
cp devmem2 /usr/bin/
cd 



bash gpio_fix/gpio_fixup.sh



da fare 

echo "creo startup service"

sudo nano /etc/systemd/system/gpio_fixup.service

nano /etc/init.d/gpio_fixup.conf
chmod u+x 
[Unit]
Description=Fix for gpio

[Service]
ExecStart=/usr/local/bin/i96/gpio_fixup.py

[Install]
WantedBy=multi-user.target



echo "api gpio -> python OPIO"
cd
git -c http.sslVerify=false clone http://wiki.pbeirne.com/patb/opio/

./opio write 101 on -d
./opio write 125 on -d
./opio write 126 on -d

./opio write 101 off /
./opio write 125 off /
./opio write 126 off

(d per dire low level)


sudo apt install software-properties-common -y
sudo apt install dirmngr --install-recommends -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo apt-get install i2c-tools -y
i2cdetect -y 0 
i2cdetect -y 1 
i2cdetect -y 2 



