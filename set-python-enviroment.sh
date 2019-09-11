#!/usr/bin/env bash
set -ex

FILENAME=~/.bashrc

if grep -q 'pyenv' $FILENAME
then
    echo 'pyenv variables already set'
else
    var1='export PATH="/home/pi/.pyenv/bin:$PATH"'
    var2='eval "$(pyenv init -)"'
    var3='eval "$(pyenv virtualenv-init -)"'

    echo "" >> $FILENAME
    echo $var1 >> $FILENAME
    echo $var2 >> $FILENAME
    echo $var3 >> $FILENAME
fi

if [ -z "$PYENV_ROOT" ]; then
  PYENV_ROOT="${HOME}/.pyenv"
fi

if [ ! -f "$PYENV_ROOT" ]; then
  curl https://pyenv.run | bash
fi

source $FILENAME