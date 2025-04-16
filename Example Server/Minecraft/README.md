# Minecraft Server

## Installation

```bash
sudo /bin/bash install.sh
```

## Management

```
# check server status (ctrl-c to exit)
systemctl status minecraft.service

# start a server
systemctl start minecraft.service

# stop a server
systemctl stop minecraft.service

# restart a server
systemctl restart minecraft.service

# access to the logs
journalctl -u minecraft.service
```
