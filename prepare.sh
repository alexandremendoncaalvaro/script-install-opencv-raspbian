#!/bin/bash
set -ex

~/script-install-opencv-raspbian/set-python-enviroment.sh

sudo dphys-swapfile swapoff
sudo sed -i 's:CONF_SWAPSIZE=.*:CONF_SWAPSIZE=2048:g' /etc/dphys-swapfile

sudo reboot