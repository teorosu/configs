call plug#begin('~/.vim/plugged')

" Number of visual spaces for TAB
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

" Tabs are spaces
set expandtab

" Show numbers
set number

" Visual complete for comand menu
set wildmenu
set wildmode=longest:full,full

" Highlight matching brackets
set showmatch

" Highlight search matches
set hlsearch

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Enable syntax processing
syntax enable

" Initialize plugin system
call plug#end()

