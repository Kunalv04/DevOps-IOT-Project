sudo iptables -F

sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

#MongoDB and MySQL ports are blocked
sudo iptables -A INPUT -p tcp --dport 27017 -j DROP
sudo iptables -A INPUT -p tcp --dport 3306 -j DROP   

sudo ipables-save > /etc/iptables.rules

echo "iptables rules updated"