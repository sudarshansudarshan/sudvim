"do not forget to include alias vim="vim sudvim/.vimrc" in the .bashrc file"
".vimrc should be placed in ~/sudvim so that you can git the directory
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


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

