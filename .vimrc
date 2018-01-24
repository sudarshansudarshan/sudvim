call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
"below command is required for the UltiSnips default directory to be sudvim
set runtimepath+=~/sudvim/
"below command tells us to open a file from sudvim/UltiSnips directory when
":UltiSnipsEdit command is issued
let g:UltiSnipsSnippetsDir='~/sudvim/UltiSnips'


Plug 'lervag/vimtex'
call plug#end()







