
" Initialize plugin system
packadd minpac

call minpac#init()
call minpac#add('tpope/vim-fugitive')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('scrooloose/nerdtree')
call minpac#add('kien/ctrlp.vim')

" Shortcuts
""" Minpac
command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

""" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Mappings
map <C-n> :NERDTreeToggle<CR>

" Number of visual spaces for TAB
set tabstop=4

" Number of spaces to shift
set shiftwidth=4

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
syntax on
filetype indent plugin on

