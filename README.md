# Ubunbrew (Aptibrewed)

Allows Homebrew users to feel at home on a Debian/Ubuntu machine.  Use the
native Ubuntu package manager (aptitude) via the _brew_ commands you are already
familiar with.

## Usage

    $> brew search <pattern>                            # alias: apt-cache search <pattern>
    $> brew install <package_one> <package_two> <...>   # alias: apt-get install <package_one> <...>

## Install

### Method #1

* Copy ./bin/brew to a directory listed in $PATH

### Method #2

    mkdir -pv $HOME/bin
    cp -v bin/brew $HOME/bin/brew
    [[ -a $HOME/.bashrc ]] && echo "export PATH=$HOME/bin:$PATH" >> $HOME/.bashrc
    [[ -a $HOME/.zshrc  ]] && echo "export PATH=$HOME/bin:$PATH" >> $HOME/.zshrc

