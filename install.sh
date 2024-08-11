#!/bin/sh
apt update
apt install unrar -y
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
cd ffmpeg-7.0.1-amd64-static/
mv ffmpeg /usr/local/bin/
mv ffprobe /usr/local/bin/
cd /root
wget https://github.com/sibuk76/o11-OTT-v2.2b1/raw/main/o11.rar
unrar x o11.rar /home
chmod -R +x /home/o11/
wget https://raw.githubusercontent.com/sibuk76/o11-OTT-v2.2b1/main/o11.service
chmod +x o11.service
mv ./o11.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable o11.service
systemctl start o11.service

echo "Installation Complete"
echo "Please login http://YOURIP:7070"
echo "USERNAME/PASSWORD admin admin"
