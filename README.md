wget https://github.com/sibuk76/o11-OTT-v2.2b1/blob/main/o11 

chmod +x o11

mv ./o11 /home/

wget https://raw.githubusercontent.com/sibuk76/o11-OTT-v2.2b1/main/o11.service

chmod +x o11.service

mv ./o11.service /etc/systemd/system/

systemctl daemon-reload

systemctl enable o11.service

systemctl start o11.service




