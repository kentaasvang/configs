# install Remote Desktop Protocol
sudo apt install xrdp -y

# add xrdp to ssl-cert user-group
sudo usermod -a -G ssl-cert xrdp 

# restart xrdp
sudo systemctl restart xrdp