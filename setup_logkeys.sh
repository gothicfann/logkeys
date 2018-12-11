#!/bin/bash

cp -rf ./bin/logkeys /usr/local/bin/
mkdir /keymap
cp -rf ./my_keymap /keymap/
cp -rf ./logkeys.service /etc/systemd/system/
systemctl daemon-reload
sleep 1
systemctl start logkeys
sleep 1
systemctl enable logkeys
