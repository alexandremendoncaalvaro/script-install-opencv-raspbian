#!/usr/bin/env bash
set -ex

wget "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png" -O lenna.jpg
python2 test.py lenna.jpg
python3 test.py lenna.jpg