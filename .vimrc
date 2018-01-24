call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'lervag/vimtex'

Plug 'sirver/ultisnips'
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>" 

"this will change the default directory
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips','~/sudvim/UltiSnips']
Plug 'ervandew/supertab'

call plug#end()

set number
set showmode


