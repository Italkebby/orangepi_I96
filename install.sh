echo "INSTALLL ALLL YOU CAN NEED"

touch log.txt
echo "let's go" >> log.txt




#after login ipscan wont spam on serial
echo "pkill -f ./script/ipspam" > /etc/profile

bash ./script/be4_reboot.txt
echo "WARNING: make sure you are connected to internet"
read

sudo apt update 
sudo apt install aptitude -y


bash ./script/power_button_install.txt
bash ./script/fixing_gpio.txt




