#!/bin/bash

if [[ ! -d $HOME/.vim ]]; then
    echo "Where is your $HOME/.vim ?"
    exit 1
fi

cd $HOME/.vim/

if [[ ! -d ./pack/tool/start/YouCompleteMe ]]; then
    echo "Cloning YouCompleteMe"
    git clone --depth 1 https://github.com/ycm-core/YouCompleteMe ./pack/tool/start/YouCompleteMe
else
    echo "Found YouCompleteMe!"
fi

cd ./pack/tool/start/YouCompleteMe
git pull --depth 1
git submodule update --depth 1 --init --recursive

if [[ $1 == "build" ]]; then
    echo "Building YouCompleteMe"
    ./install.py --clang-completer
fi
