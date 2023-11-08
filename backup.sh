#!/bin/bash

read -p "Enter your backup name: " backup_name

sudo rm /$backup_name.tar.gz

sudo tar --ignore-failed-read --exclude="/var/swap" --checkpoint=1000 --checkpoint-action="exec="echo $TAR_CHECKPOINT")" -czf /$backup_name.tar.gz /usr /etc /lib /var/*
