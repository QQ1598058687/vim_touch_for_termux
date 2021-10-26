#!/bin/bash
function main()
{
      cd ~
    apt update
    pkg install -y git zsh wget
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

    sh install.sh

#chmod +x install.sh &&./install.sh

cd ~ &&git clone https://github.com/eendroroy/alien.git
cd alien
git submodule update --init --recursive

echo "source ~/alien/alien.zsh">> ~/.zshrc 
}

main
