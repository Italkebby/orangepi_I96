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
