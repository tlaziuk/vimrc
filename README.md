.vimrc
===
This repository contains `.vimrc` file which is the configuration file for Vim.

Requirements
---
- `git`
- `exuberant-ctags`
- `python`
- `cmake`

Installation
---
- Create a symlink from your local `.vimrc`:
  ``` bash
  cd ~
  ln -s .vimrc.git/.vimrc
  ```
- Install [neobundle.vim](https://github.com/Shougo/neobundle.vim) - a package manager:
  ``` bash
  sh < (curl -s https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh)
  ```
- After first run of `vim` you will be asked to upgrade your plugins.
