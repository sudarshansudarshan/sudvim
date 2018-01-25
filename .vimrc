"install curl by issuing the command "sudo apt-get install curl"
"After that copy paste the following line on your terminal without the quotes:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
"below command is required for the UltiSnips default directory to be sudvim
set runtimepath+=~/sudvim/
"below command tells us to open a file from sudvim/UltiSnips directory when
":UltiSnipsEdit command is issued
let g:UltiSnipsSnippetsDir='~/sudvim/UltiSnips'
"below ensures that an empty tex file is valid. Otherwise the snippets aren't
"activated on an empty tex file
let g:tex_flavor = "latex"


Plug 'lervag/vimtex'
Plug 'davidhalter/jedi-vim'
Plug 'lervag/vimtex'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'


call plug#end()

set number
set showmode

