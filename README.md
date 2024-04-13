# Neovim Setup

## External Requirements

### Filesystem structure:

- create ~/.local/bin
  - for neovim install, ripgrep
  - add it to PATH using:
  ```bash
    export PATH=~/.local/bin:$PATH
  ```
- create ~/.config/nvim
  - nvim is the config folder for neovim

### Programs / Tools

- wsl:
  - installing:
  ```bash
    wsl --install
  ```
  - uninstalling:
  ```bash
    wsl --unregister Ubuntu
  ```
- [build essentials](https://linuxize.com/post/how-to-install-gcc-on-ubuntu-20-04/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Nerd Font](https://www.nerdfonts.com/)
  - install a font on windows and change it for the console
- [NodeJS/npm](https://linuxize.com/post/how-to-install-node-js-on-ubuntu-20-04/)