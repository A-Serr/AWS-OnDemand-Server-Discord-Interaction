set -e

apt update
apt install -y openjdk-17-jre-headless
apt clean

useradd --create-home minecraft

wget https://mediafilez.forgecdn.net/files/6253/993/server-1.1.5.zip
unzip server-1.1.5.zip -d /home/minecraft
echo eula=true > /home/minecraft/eula.txt
chmod +x /home/minecraft/startserver.sh
chown -R minecraft:minecraft /home/minecraft

cp auto_shutdown.sh /home/minecraft/auto_shutdown.sh
cp minecraft_cron /etc/cron.d/minecraft_cron

cp minecraft.service /etc/systemd/system/minecraft.service
systemctl enable minecraft.service --now
