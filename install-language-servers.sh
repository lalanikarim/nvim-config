#!/bin/bash
npm install -g neovim
npm install -g typescript typescript-language-server
npm install -g vim-language-server
npm install -g vscode-json-languageserver
npm install -g intelephense
npm install -g vls
npm install -g yaml-language-server
npm install -g vscode-html-languageserver-bin

### phpactor ###
cd ~
git clone git@github.com:phpactor/phpactor
cd phpactor
composer install
chmod +x bin/phpactor
cd ~/.local/bin
ln -s ~/phpactor/bin/phpactor phpactor
