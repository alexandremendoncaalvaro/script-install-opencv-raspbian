#!/usr/bin/env bash
set -ex

filename=~/.bashrc

if grep -q 'pyenv' filename
then
    echo 'pyenv variables already set'
else
    var1='export PATH="/home/pi/.pyenv/bin:$PATH"'
    var2='eval "$(pyenv init -)"'
    var3='eval "$(pyenv virtualenv-init -)"'

    echo "" >> ~/.bashrc
    echo $var1 >> ~/.bashrc
    echo $var2 >> ~/.bashrc
    echo $var3 >> ~/.bashrc
fi

curl https://pyenv.run | bash

source ~/.bashrc