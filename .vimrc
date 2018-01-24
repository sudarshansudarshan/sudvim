"The following 5 line code installs vim-plug if it is not installed.

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" vimtex plugin for latex. 
Plug 'lervag/vimtex'
Plug 'SerVer/ultisnips'

" Initialize plugin system
call plug#end()
