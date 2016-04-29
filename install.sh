#!/usr/bin/env bash

BIN_DIR="$HOME/.bin"

if [ ! -d "$BIN_DIR" ]; then 
    mkdir $BIN_DIR
    echo "Adding $BIN_DIR to your PATH..." 
    echo "export PATH=$PATH:$BINDIR" >> $HOME/.bashrc
    source $HOME/.bashrc
fi

GIT=git 

if [ -z $(which "$GIT") ] ; then 
    echo "error: git is required to install wpm. wpm is designed to GitBash"
    exit 1
fi

cd $BIN_DIR
echo "Cloning wpm repository..."
git clone git://github.com/hugo-dc/wpm.git
result=$?

if [[ "$result" = "0" ]] ; then 
    touch $BIN_DIR/wpm/wpmsource
    mkdir $BIN_DIR/wpm/installers
    mkdir $BIN_DIR/wpm/bin
    echo 'export PATH=$PATH:$BIN_DIR/wpm/bin:/C/Windows/System32' $BIN_DIR/wpm/wpmsource
    echo "Adding wpm to your PATH..."
    echo 
    echo -n $'  echo \'export PATH="PATH:';
    echo "$BIN_DIR/wpm\"' >> $HOME/.bashrc";
    echo 'export PATH=$PATH:~/.bin/wpm' >> ~/.bashrc
    echo 'export PATH=$PATH:~/.bin/wpm/bin' >> ~/.bashrc
    source $HOME/.bashrc
    echo "**** Please restart GitBash ****"
else
    echo "[$result] Error downloading!"
fi



