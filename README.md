# Neovim Setup

## Table of Contents

- [Neovim Setup](#neovim-setup)
  - [Table of Contents](#table-of-contents)
  - [External Requirements](#external-requirements)
    - [Filesystem structure:](#filesystem-structure)
    - [Programs / Tools](#programs--tools)
    - [Manual mason installs](#manual-mason-installs)
  - [TMUX / Styling](#tmux--styling)
  - [Bash profile](#bash-profile)


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
- unzip:
```bash
  sudo apt install unzip
```
- python:
```bash
  sudo apt install python3.10-venv
```
- [dotnet](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-install?pivots=os-linux-ubuntu-2204&tabs=dotnet6)

### Manual mason installs

- stylua
- prettier
- clang-format

## TMUX / Styling

- [tmux setup](https://www.youtube.com/watch?v=jaI3Hcw-ZaA)
- [Colorscheme](https://github.com/catppuccin/catppuccin)
  - use it for windows terminal, neovim, tmux
- [TMP](https://github.com/tmux-plugins/tpm)
  - Setting to apply nvim colorscheme in tmux
  ```
  set-option -ga terminal-overrides ",xterm-256color:Tc"
  ```
- Windows Terminal (MS Store)
- [brew](https://brew.sh/)
- [omp](https://ohmyposh.dev/docs/installation/linux)
```bash
  # path to themes
  $(brew --prefix oh-my-posh)/themes
```
- [tmuxifier](https://github.com/jimeh/tmuxifier)

## Bash profile

```bash
# ... auto generated config
eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/catppuccin.omp.json)"

PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"

export EDITOR=~/.local/bin/nvim-linux64/bin/nvim
```

## Notes

- fixing clangd encoding warning:

```bash
nvim ~/.local/share/nvim/lazy/nvim-lspconfig/lua/lspconfig/server-configurations/clangd.lua
```
change offsetEncoding to only use utf-16
