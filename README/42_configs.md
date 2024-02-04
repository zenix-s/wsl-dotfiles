## Utilidades adicionales para 42

Para 42 y nvim hay que modificar el archivo de configuración de neovim
`.config/nvim/lua/config/options.lua`

```lua
local opt = vim.opt

opt.expandtab = false -- Use tabs instead of spaces
opt.relativenumber = false -- Disable relative line numbers
```

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