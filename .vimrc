" Initialize plugin system
packadd minpac

call minpac#init()
call minpac#add('tpope/vim-fugitive')
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Shortcuts
command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

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

" Backspace does not do what is should without these
set backspace=indent,eol,start

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Enable syntax processing
syntax enable

