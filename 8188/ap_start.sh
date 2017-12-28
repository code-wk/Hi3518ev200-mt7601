cd /
insmod wlan.ko
ifconfig wlan0 up
#加载运行，产生热点，热点的密码、名字等可以在.conf里面自行更改
hostapd -B /etc/rtl_hostapd_2G.conf
#相当于路由器的ip
ifconfig wlan0 192.168.100.1
#创建中间文件，保存连接信息的
touch /var/state/dhcp.leases
#启动dhcp服务器，用于给连接该热点的IP分配IP地址
dhcpd -cf /etc/dhcpd.conf




 

