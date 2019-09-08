# OpenCV e Python - Raspbian #

Este exemplo instala o Python 3.5.7 e OpenCV 3.4.1, mas basta alterar para o release q vc quiser.

Execute o comando a seguir no prompt do Raspbian:
```bash
sudo apt-get update && sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev git wget curl llvm libncurses5-dev libncursesw5-dev openssl bzip2 && git clone https://github.com/alexandremendoncaalvaro/script-install-opencv-raspbian.git ~/script-install-opencv-raspbian && cd ~/script-install-opencv-raspbian
```

Após o comando abaixo o Raspberry irá reiniciar sozinho:
```bash
chmod +x *.sh && ./prepare.sh
```

Após reiniciar execute a instalação passando a versão do PYTHON e do OPENCV a ser utilizado:
```bash
~/script-install-opencv-raspbian/install.sh 3.5.7 3.4.4
```

Use o comando a seguir para baixar uma foto de exemplo e verificar se está funcionando tanto no python 2 quanto no python 3.
```bash
~/script-install-opencv-raspbian/test.sh
```

*Este tutorial foi adaptado da seguinte fonte:
https://gist.github.com/willprice/abe456f5f74aa95d7e0bb81d5a710b60
