set -e

apt update
apt install -y openjdk-17-jre-headless
apt clean

useradd --create-home minecraft

wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar -P /home/minecraft
echo eula=true > /home/minecraft/eula.txt

cp auto_shutdown.sh /home/minecraft/auto_shutdown.sh
cp minecraft_cron /etc/cron.d/minecraft_cron

cp minecraft.service /etc/systemd/system/minecraft.service
systemctl enable minecraft.service --now
