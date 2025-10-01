3. > eru
auto eth0
iface eth0 inet dhcp
auto eth1
iface eth1 inet static
	address [Prefix IP].1.1
	netmask 255.255.255.0
auto eth2
iface eth2 inet static
	address [Prefix IP].2.1
	netmask 255.255.255.0
>melkor
auto eth0
iface eth0 inet static
	address [Prefix IP].1.2
	netmask 255.255.255.0
	gateway [Prefix IP].1.1
>manwer
auto eth0
iface eth0 inet static
	address [Prefix IP].1.3
	netmask 255.255.255.0
	gateway [Prefix IP].1.1
>varda
auto eth0
iface eth0 inet static
	address [Prefix IP].2.2
	netmask 255.255.255.0
	gateway [Prefix IP].2.1
>ulmo
auto eth0
iface eth0 inet static
	address [Prefix IP].2.3
	netmask 255.255.255.0
	gateway [Prefix IP].2.1
4.nambahin iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s [Prefix IP].0.0/16 & nyimpen ke .bshrc
5.apt update
apt install -y iptables
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s [Prefix IP].0.0/16
