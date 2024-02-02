# install wsl

  

```bash

wsl --install Debian

```
  

# install basic packages


```bash
sudo su
sudo apt update && sudo apt upgrade -y
sudo apt install wget curl unzip git gcc g++ fd-find ripgrep python3 python3-pip pipx gh clang net-tools zsh ruby ruby-dev neofetch build-essential gdb -y
```
  

# ZSh
```bash
# Establece zsh como perdeterminado
chsh -s $(which zsh)
```


# Node

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
nvm use --lts
```

# LazyGit
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```
# install neovim


```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim


exit
```

  
# LazyVim

```shell
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

sudo gem install neovim

npm install -g neovim
nvim
```
# install norminette

  

```bash
pipx install norminette
pipx ensurepath
pipx completions
# Copiar el contenido correspondiente en el archivo .bashrc o .zshrc
```

# Francinette Paco
```bash
bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/update.sh)"
francinette -u

```
  

# Github cli

```bash
gh auth login
# Seleccionar la opcion https
# Copiar el codigo de la pagina https://github.com/login/device
```



# Oh my zsh
```bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```
# Oh my posh

```shell
sudo su
curl -s https://ohmyposh.dev/install.sh | bash -s
# Se indica que se ha creado una carpeta themes en una ruta especifica
# Se copia el contenido de la carpeta themes al usuario base de wsl
# Copiarlo en una carpeta llamada .oh-my-posh/themes
exit
# Se añade la siguiente linea al archivo .bashrc
eval "$(oh-my-posh init bash --config ~/.oh-my-posh/themes/amro.omp.json)"


```
