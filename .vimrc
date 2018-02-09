"install curl by issuing the command "sudo apt-get install curl"
"After that copy paste the following line on your terminal without the quotes:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
"following is a dictionary Plugin"
Plug 'itchyny/dictionary.vim'

Plug 'powerline/powerline'

Plug 'SirVer/ultisnips'
"below command is required for the UltiSnips default directory to be sudvim
set runtimepath+=~/sudvim/
"below command tells us to open a file from sudvim/UltiSnips directory when
":UltiSnipsEdit command is issued
let g:UltiSnipsSnippetsDir='~/sudvim/UltiSnips'
"below ensures that an empty tex file is valid. Otherwise the snippets aren't
"activated on an empty tex file
let g:tex_flavor = "latex"

Plug 'vim-syntastic/syntastic'
Plug 'lervag/vimtex'
"This comment was added by SRS Iyengar on 28.01.18
"This will enable folding in vimtex. use the command za to toggle
"folding/unfolding
let g:vimtex_fold_enabled =1 

Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
"This comment was added by SRS Iyengar on 28.01.18
"This is to disable autotrigger
"let g:ycm_auto_trigger=0

Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call plug#end()

set number
set showmode


"This comment was added by SRS Iyengar on 27.01.18"
"The following code is required for youcompleteme to work with vimlatex. This
"is the documentation given in the vimtex help file and so I have included the
"following 4 lines from there.
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

"This comment was added by SRS Iyengar on 27.01.18
"The following 5 lines is to ensure that ycm and UltiSnips work in each
"other's prsence. I used to face a lot of problems with keybindings without
"the following 5 lines.
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Below configuration is to ensure that python files are autoindented
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Use \d on top of a word to look it up in Dictionary.app
nmap <silent> <Leader>d :!open dict://<cword><CR><CR>
