#!/bin/bash

pip3 install -r requirements.txt

mkdir -p /etc/ddns
cp config.json /etc/ddns

cp ddns_update.py /usr/local/bin

cp ddns_update.service /lib/systemd/system

systemctl enable ddns_update
systemctl start ddns_update
