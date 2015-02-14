#!/bin/zsh

if [[ ! -e ~/.cask ]]
then
    echo "Cloning Cask repo"
    git clone git@github.com:cask/cask.git ~/.cask
fi

if [[ $(grep "cask/bin" ~/.zshrc) == "" ]]
then
    echo "Adding \$HOME/.cask/bin to \$PATH in ~/.zshrc"
    echo '' >> ~/.zshrc
    echo "# Added by ~/.emacs.d/install.sh" >> ~/.zshrc
    echo "export PATH=\$HOME/.cask/bin:\$PATH" >> ~/.zshrc
fi

export PATH=$HOME/.cask/bin:$PATH

cd ~/.emacs.d
cask install

# For Python / ELPY
# Prerequisite: Install Python as per:
# http://docs.python-guide.org/en/latest/#getting-started
if [[ `uname` == "linux" ]]; then
  sudo pip install --upgrade elpy flake8 rope jedi ipython pyflakes
elif [[ `uname` == "Darwin" ]]; then
  pip install --upgrade elpy flake8 rope jedi ipython pyflakes
fi

EMACSINIT="$HOME/.emacs"
if [ -L "$EMACSINIT" ]; then
  echo "$EMACSINIT found... not creating symlink"
else
  echo "creating symlink $EMACSINIT ... "
  ln -s $HOME/.emacs.d/.emacs $EMACSINIT
fi
