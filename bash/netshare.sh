#/bin/bash!

sudo ip link set up dev net0
sudo ip addr add 192.168.123.100/24 dev net0
sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o wifi0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i net0 -o wifi0 -j ACCEPT
