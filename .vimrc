if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'lervag/vimtex'

Plug 'sirver/ultisnips'
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>" 

"this will change the default directory for UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/sudvim/UltiSnips','.vim/UltiSnips', 'UltiSnips']
Plug 'ervandew/supertab'

call plug#end()

set number
set showmode


