#!/bin/bash
yum -y update

puppet_master_ip=10.1.104.36
echo $puppet_master_ip puppet >> /etc/hosts

yum install -y puppet

puppet agent -t
