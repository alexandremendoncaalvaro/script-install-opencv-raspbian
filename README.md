# Script to compile specific versions of OpenCV and Python on Raspbian

## If you just want to use OpenCV default version, use PIP :)
If you ahead have Python 3 just use:
```bash
pip3 install opencv-contrib-python
```

## If you want to specify the versions and compile OpenCV, follow this instructions:

**Raspbian command prompt:**

Install requirements and download the script:
```bash
sudo apt-get update && sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev git wget curl llvm libncurses5-dev libncursesw5-dev openssl bzip2 && git clone https://github.com/alexandremendoncaalvaro/script-install-opencv-raspbian.git ~/script-install-opencv-raspbian && cd ~/script-install-opencv-raspbian
```

Authorize the scripts and prepare the Raspberry memory allocation (after this, the Raspberry will restart automatically):
```bash
chmod +x *.sh && ./set-python-enviroment.sh && ./prepare.sh
```

Python and OpenCV installation (specify Python version first and them the OpenCV version):
```bash
cd ~/script-install-opencv-raspbian && ./install.sh 3.7.4 4.1.1
```

Validate:
```bash
cd ~/script-install-opencv-raspbian && ./test.sh
```

*This tutorial are based at this one:
https://gist.github.com/willprice/abe456f5f74aa95d7e0bb81d5a710b60


# Are you a native english speaker?
No, I am not. If you find typos, grammar errors or whatever please feel free to PR or tell me.