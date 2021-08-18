# Installation Instructions

Install curl by issuing the command "sudo apt-get install curl
After that copy paste the following line on your terminal:

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Handling YCM core error

Navigate to YouCompleteMe directory:

cd .vim/plugged/YouCompleteMe

after this run ./install.py

Use following command if cmake error is shown

sudo apt install build-essential cmake python3-dev
