"install the right verison of vim by going through the following answer
"https://stackoverflow.com/questions/56699336/how-do-i-install-vim-on-osx-with-python-3-support



"install curl by issuing the command "sudo apt-get install curl" or use brew
"command if you are on mac.
"After that copy paste the following line on your terminal without the quotes:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
"The above two line is a recent addition, to ensure that it is python3 and not
"python2

"This comment was added by SRS Iyengar on 8th September 2019"
"This will ensure that the syntastic checkers are on"
"If we dont do this, :SyntasticInfo will show that no checkers are enabled"
"I am directly copy pasting the content from the syntastic github homepage.
"There is an FAQ there talking about this"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


Plug 'ervandew/supertab'

call plug#end()

set number
set showmode


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Use \d on top of a word to look it up in Dictionary.app
"Uncomment the following for it to work. Note that it works only in Mac.
"nmap <silent> <Leader>d :!open dict://<cword><CR><CR>
"
"following maps gn to - move to next line moving the rest of the text
"to the next line
map gn i<CR><ESC>


set belloff=all
