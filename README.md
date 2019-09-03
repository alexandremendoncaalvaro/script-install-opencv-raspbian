# OpenCV 4.1.1 - Raspbian Buster #

Este exemplo instala o Python 3.5.7 e define ele como o global, mas basta alterar para o release q vc quiser.

Execute os comandos abaixo em sequencia no prompt do Raspbian:
```bash
sudo apt-get update && sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev openssl bzip2
```
```bash
curl https://pyenv.run | bash
```
**Reinicie o shell para atualizar o PATH**

Nesta próxima etapa selecione a release do Python que preferir:
```bash
pyenv install 3.5.7 && pyenv global 3.5.7
```

```bash
git clone https://github.com/alexandremendoncaalvaro/script-install-opencv-raspbian.git ~/script-install-opencv-raspbian && cd ~/script-install-opencv-raspbian
```

Após o comando abaixo o Raspberry irá reiniciar sozinho:
```bash
chmod +x *.sh && ./prepare.sh
```

Após reiniciar execute a instalação:
```bash
./install.sh
```

Use o comando a seguir para baixar uma foto de exemplo e verificar se está funcionando tanto no python 2 quanto no python 3.
```bash
./test.sh
```

*Este tutorial foi adaptado da seguinte fonte:
https://gist.github.com/willprice/abe456f5f74aa95d7e0bb81d5a710b60
