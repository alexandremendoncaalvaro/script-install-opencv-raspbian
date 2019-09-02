#!/usr/bin/env bash
set -ex

./download-opencv.sh
./install-deps.sh
./build-opencv.sh
cd ~/opencv/opencv-4.1.1/build
sudo make install