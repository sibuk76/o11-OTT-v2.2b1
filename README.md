apt update

apt install unrar -y

wget https://github.com/sibuk76/o11-OTT-v2.2b1/raw/main/o11.rar

unrar x o11.rar /home

chmod +x /home/o11

wget https://raw.githubusercontent.com/sibuk76/o11-OTT-v2.2b1/main/o11.service

chmod +x o11.service

mv ./o11.service /etc/systemd/system/

systemctl daemon-reload

systemctl enable o11.service

systemctl start o11.service




