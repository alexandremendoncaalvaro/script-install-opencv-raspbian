#!/bin/bash
set -ex

PYTHON_VERSION=3.5.7
OPENCV_VERSION=4.1.0

if [ ! -z "$1" ]
then
  PYTHON_VERSION=$1
fi

if [ ! -z "$2" ]
then
  OPENCV_VERSION=$2
fi

pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION

~/script-install-opencv-raspbian/download-opencv.sh
~/script-install-opencv-raspbian/install-deps.sh
~/script-install-opencv-raspbian/build-opencv.sh

cd ~/opencv/opencv-$OPENCV_VERSION/build

sudo make install

sudo dphys-swapfile swapoff
sudo sed -i 's:CONF_SWAPSIZE=.*:CONF_SWAPSIZE=1024:g' /etc/dphys-swapfile

sudo reboot