urxvtc -name top -e htop
urxvtc -name iotop -e sudo iotop -d 2
urxvtc -name iftop -e sudo iftop
urxvtc -name log -e journalctl -f -p 5
