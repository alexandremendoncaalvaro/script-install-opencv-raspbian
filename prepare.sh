#!/usr/bin/env bash
set -ex

var1='export PATH="/home/pi/.pyenv/bin:$PATH"'
var2='eval "$(pyenv init -)"'
var3='eval "$(pyenv virtualenv-init -)"'

echo "" >> ~/.bashrc
echo $var1 >> ~/.bashrc
echo $var2 >> ~/.bashrc
echo $var3 >> ~/.bashrc

source ~/.bashrc

sudo dphys-swapfile swapoff
sudo sed -i 's:CONF_SWAPSIZE=.*:CONF_SWAPSIZE=2048:g' /etc/dphys-swapfile
sudo reboot