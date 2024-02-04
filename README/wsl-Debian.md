# Mi configuracion de WSL

## install wsl

En un terminal de windows con permisos de administrador ejecutar el siguiente comando

```bash
wsl --install Debian

# esto abre nuestro entorno
wsl
```

## Configuración de WSL

### Instalación de paquetes necesarios

En la terminal de WSL ejecutar los siguientes comandos

#### Actulizar los paquetes

```bash
sudo apt update && sudo apt upgrade -y
```

#### Instalación de paquetes necesarios

```bash
sudo apt install wget curl unzip git gcc g++ clang fd-find ripgrep python3 python3-pip pipx gh net-tools zsh ruby ruby-dev neofetch build-essential gdb ssh man-db manpages-dev xclip -y
```

### ZSh

Ejecutar el comando y cerrar la terminal, al abrir una nueva terminal se debería abrir con zsh
Si tras cerrar la terminal nos pregunta si queremos configurar un archivo de configuración, seleccionar la opción 2

```bash
chsh -s $(which zsh)
```

### install neovim

Ejecutar los siguientes comandos para instalar neovim en WSL, Copiar y pegar en la terminal todo el bloque de comandos

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

```

### Node

Instalación de node con nvm

#### Instalación con nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

```bash
nvm install --lts
nvm use --lts
```

### LazyGit

LazyGit es una herramienta que nos permite realizar operaciones de git de forma gráfica

Ejecutar los siguientes comandos para instalar LazyGit en WSL, Copiar y pegar en la terminal todo el bloque de comandos

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

Eliminar el archivo lazygit.tar.gz y el archivo lazygit

```bash
rm -rf lazygit.tar.gz
rm -rf lazygit
```

## Personalización de WSL

### Oh my zsh

Se instala oh my zsh con el siguiente comando

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### LazyVim

LazyVim es una configuración de neovim que nos permite tener un entorno de desarrollo listo para trabajar

Se clona el repositorio de LazyVim en la carpeta .config/nvim

```shell
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

Eliminar el archivo .git

```shell
rm -rf ~/.config/nvim/.git
```

Se instalan los plugins de neovim

```shell
sudo gem install neovim
```

```shell
npm install -g neovim
```

Cuando se abra neovim por primera vez, se instalarán los plugins automáticamente

```shell
nvim
```

### Github cli

Se loguea en github con el siguiente comando
Seguir las instrucciones que aparecen en la terminal

```bash
gh auth login
```

## Utilidades adicionales para 42

### Norminette

Para instalar la norminette se ejecutan los siguientes comandos

```bash
pipx install norminette
```

Para asegurarse de que el path de pipx está en el path de la terminal se ejecuta el siguiente comando
Se debe cerrar la terminal y abrir una nueva para que los cambios surtan efecto

```bash
pipx ensurepath
```

### Francinette Paco

Para instalar la francinette se ejecutan los siguientes comandos

```bash
bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"
```

```bash
francinette -u
```

## Alternativas

### Oh my posh alternativa a oh my zsh

```shell
sudo su
curl -s https://ohmyposh.dev/install.sh | bash -s
# Se indica que se ha creado una carpeta themes en una ruta especifica puede ser .config/oh-my-posh/themes
# Se copia el contenido de la carpeta themes al usuario base de wsl
# Copiarlo en una carpeta llamada .oh-my-posh/themes
```

Se añade la siguiente linea al archivo .bashrc

```shell
eval "$(oh-my-posh init bash --config ~/.oh-my-posh/themes/amro.omp.json)"
```
