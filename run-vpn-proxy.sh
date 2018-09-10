#!/usr/bin/env bash
echo $1
source ~/.bashrc
runProfile $1
sh /etc/service/squid/run