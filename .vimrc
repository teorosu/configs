" PLUGIN INITIALIZATION {

    "" Initialize plugin system
    call plug#begin('~/.vim/plugged')
    
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'Shougo/deoplete.nvim'

    " Go
    Plug 'fatih/vim-go'

    " Go autocompletion
    Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'

    " Initialize plugin system
    call plug#end()
" }

" SHORTCUTS {

    "" ReloadVimrc
    command! ReloadVimrc source ~/.vimrc

" } 

" PLUGIN CONFIGURATION {

    "" CtrlP
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

    "" NERDTree
    map <C-n> :NERDTreeToggle<CR>

    "" Deoplete Autocompletion
    let g:deoplete#enable_at_startup = 1

" } 

" VIM CONFIGURATION

    "" Indent at the same level of the previous line
    set autoindent

    "" Prevents inserting two spaces after punctuation on a join (J)
    set nojoinspaces 

    "" Number of visual spaces for TAB
    set tabstop=4

    "" Number of spaces to shift
    set shiftwidth=4

    "" Number of spaces in tab when editing
    set softtabstop=4

    "" Tabs are spaces
    set expandtab

    "" Show numbers
    set number

    "" Visual complete for comand menu
    set wildmenu
    set wildmode=longest:full,full

    "" Highlight matching brackets
    set showmatch

    "" Highlight search matches
    set hlsearch

    "" Backspace does not do what is should without these
    set backspace=indent,eol,start

    "" Turn off search highlight
    nnoremap <leader><space> :nohlsearch<CR>

    "" Enable syntax processing
    syntax on
    filetype indent plugin on

   "" Set ton of history (default 20)
    set history=1000
" }
