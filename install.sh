echo "INSTALLL ALLL YOU CAN NEED"
touch log.txt
echo "let's go" >> log.txt
clear
echo "WARNING: make sure you are connected to internet"
read
bash $(pwd)/script/be4_reboot.txt
clear
echo "STATUS: IP spam in serial in startup and after login will be removed"
echo "$pwd/script/ipspam.txt & DA FIXARE" > log.txt

#after login from LAN ipscan won't spam on serial
echo "pkill -f $pwd/script/ipspam.txt" > /etc/profile

clear
echo "STATUS: Installing pre-requirements"
sudo apt update 
sudo apt install aptitude software-properties-common -y

echo "aptitude installed">>log.txt

echo "STATUS: Installing powerbutton"
bash ./script/power_button_install.txt

echo "power button installed">>log.txt

echo "STATUS: Installing GPIO_fixer"
bash ./script/fixing_gpio.txt

echo "GPIO_fixer installed">>log.txt


