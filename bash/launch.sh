#!/bin/bash

function print_usage()
{
  echo "usage: $0 <WAN interface> <subnet interface> <up|down>"
}

if [[ -z $3 ]]
then
  print_usage
  exit 1
else
  wan_nic="$1"
  subnet_nic="$2"
  action="$3"
fi


mask=/24
subnet_ip=10.0.0.0$mask
server_ip=10.0.0.100$mask
iptables=/usr/bin/iptables
dhcpd_conf=dhcpd.conf
dhcpd_lease=/tmp/dhcpd.lease
dhcpd_pid=/tmp/dhcpd.pid

source launch_subnet.sh

launch_subnet "$action"
