.vimrc
===
This repository contains `.vimrc` file which is the configuration file for Vim.
The configuration aims to provide both `Vim` and `NeoVim` config.

Requirements
---
- `git`
- `exuberant-ctags`
- `python`
- `cmake`
- `clang`
- `go`
- `rust`
- `cargo`

Installation
---
- Create a symlink from your local `.vimrc`:
  ``` bash
  cd ~
  ln -s <dir>/.vimrc
  ```
- Install [vim-plug](https://github.com/junegunn/vim-plug) - a package manager:
  ``` bash
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
- After first run of `vim` you can update your plugins by `:plugUpdate`.

