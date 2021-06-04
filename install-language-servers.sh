#!/bin/bash
npm install -g neovim
npm install -g typescript typescript-language-server
npm install -g vim-language-server
npm install -g vscode-json-languageserver
npm install -g intelephense
npm install -g vls
npm install -g yaml-language-server
npm install -g vscode-html-languageserver-bin
npm install -g graphql-language-service-cli

### phpactor ###
cd ~
git clone https://github.com/phpactor/phpactor
cd phpactor
composer install
chmod +x bin/phpactor
cd ~/.local/bin
ln -s ~/phpactor/bin/phpactor phpactor

### pip install ###
pip3 install cmake-language-server
pip3 install 'python-language-server[all]'
