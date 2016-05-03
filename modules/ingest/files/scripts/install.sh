#!/bin/bash

sudo -u duxbury

cd /copy/src/

cd /copy/src/flex-2.5.39

./configure

make

sudo make install

sudo yum install libpcap-devel

sudo yum install wireshark

cd /home/duxbury/copy/src/fprobe-1.1

sudo ./configure

make

sudo make install

cd /home/duxbury/copy/src/autoconf-2.69

sudo ./configure

cd /home/duxbury/copy/src/nfdump-1.6.2

sudo ./configure

sudo make

sudo make install

sudo yum install byacc

sudo yum install watchdog

sudo yum install python-setup-tools

sudo easy-install pip

sudo easy-install argparse

sudo /usr/bin/pip install pika

cd /home/duxbury/copy/

#sudo rpm -ivh erlang-17.4-1.e16.x86-64.rpm

sudo rpm -ivh erlang-17.4-1.el6.x86_64.rpm 
#sudo rpm -ivh rabbitmq-server-3.5.3-1.noarch.rpm


sudo service rabbitmq-server start

sudo service watchdog start

#add ipaddress here
sudo fprobe -i eth0 172.16.3.19:23456

nfcapd -w -D -p 23456 -B 200 -z -I Linux-Host-1-eth0 -l  /mnt/sec_shared.nfs/nfcapd/ -T all


#sudo yum install 
