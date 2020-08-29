#! /bin/bash

Colour='\033[1;31m'
Color_Off='\033[0m'

#get updates
echo -e "${Colour}Checking for updates \n\n${Color_Off}"
sudo apt-get update
sudo apt-get upgrade

#install Grafana
echo -e "${Colour}Installing Grafana \n${Color_Off}"
wget https://dl.grafana.com/oss/release/grafana_7.1.5_armhf.deb
sudo dpkg -i grafana_6.1.6_armhf.deb

#install Grafana plugins
echo -e "${Colour}Installing Grafana plugins \n${Color_Off}"
sudo grafana-cli plugins install ntop-ntopng-datasource
sudo grafana-cli plugins install grafana-clock-panel
sudo grafana-cli plugins install grafana-piechart-panel
sudo service grafana-server restart



echo -e "\033[1;37m \n\nCreated by https://github.com/Arsenull\n${Color_Off}"
