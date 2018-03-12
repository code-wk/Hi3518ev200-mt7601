cd /
rm /etc/wpa_supplicant.conf
touch /etc/wpa_supplicant.conf
insmod wlan.ko
ifconfig wlan0 up
#修改成要连接的wifi名称，密码
wpa_passphrase "HCG_Router" "@hcg-cd123@"  >>/etc/wpa_supplicant.conf
wpa_supplicant -i wlan0 -B -c /etc/wpa_supplicant.conf
ifconfig wlan0 192.168.1.106
route add default gw 192.168.1.1

 

