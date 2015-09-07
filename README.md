.vimrc
===
This repository contains `.vimrc` file which is the configuration file for Vim.

Requirements
---
- `git`
- `ctags`

Installation
---
- Create a symlink from your local `.vimrc`:
  ``` bash
  cd ~
  ln -s .vimrc.git/.vimrc
  ```
- Install [Vundle.vim](https://github.com/VundleVim/Vundle.vim) (package manager):
  ``` bash
  mkdir -p ~/.vim/bundle
  cd ~/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim
  ```
- Run Vim and update plugins:
  ``` bash
  vim -c "PluginUpdate"
  ```
  Perform above action as often as you want to update your plugins.
