#!/bin/bash
npm install -g neovim
npm install -g typescript typescript-language-server
npm install -g vim-language-server
npm install -g vscode-langservers-extracted
npm install -g intelephense
npm install -g vls
npm install -g yaml-language-server
npm install -g vscode-html-languageserver-bin
npm install -g graphql-language-service-cli
npm install -g elm elm-test elm-format @elm-tooling/elm-language-server

### phpactor ###

[[ ! -d $HOME/.phpactor ]] && mkdir $HOME/.phpactor 
cd $HOME/.phpactor
if ! -d .git 
then 
  git clone https://github.com/phpactor/phpactor .
else
  git pull
fi
composer update
chmod +x bin/phpactor
[[ -f $HOME/.local/bin/phpactor ]] && rm $HOME/.local/bin/phpactor
ln -s $HOME/.phpactor/bin/phpactor $HOME/.local/bin/phpactor

### elixir-ls ###

[[ ! -d $HOME/.elixir-ls ]] && mkdir $HOME/.elixir-ls
cd $HOME/.elixir-ls
[[ ! -f elixir-ls.zip ]] &&  wget https://github.com/elixir-lsp/elixir-ls/releases/download/v0.9.0/elixir-ls.zip && unzip elixir-ls.zip 
[[ -f $HOME/.local/bin/elixir-ls ]] && rm $HOME/.local/bin/elixir-ls
ln -s $HOME/.elixir-ls/language_server.sh $HOME/.local/bin/elixir-ls

### pip install ###
pip3 install cmake-language-server
pip3 install 'python-language-server[all]'
