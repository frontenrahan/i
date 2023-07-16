#Default network connection
sudo echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolv.conf
echo "Nameserver configuration was done..."
sudo echo "deb http://kali.download/kali kali-rolling main contrib non-free\ndeb-src http://kali.download/kali kali-rolling main contrib non-free\n\n#deb http://kali.download/kali kali-last-snapshot main contrib non-free\n#deb-src http://kali.download/kali kali-last-snapshot main contrib non-free\n\n#BD alternative domain- http://kali.cs.nctu.edu.tw" | sudo tee -a /etc/apt/sources.list
echo "Source list configuration was done..."
#Cheking or updating linux
sudo apt-get update && apt-get upgrade -y | echo "[Update & Upgrade done]"
sudo apt-get install wget -y
sudo wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add
sudo apt-get update | apt-get autoremove | apt-get autoclean
echo "apt-key configuration was done..."
