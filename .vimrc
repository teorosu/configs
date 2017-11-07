packadd minpac

" Init
call minpac#init()

" Packages
call minpac#add('tpope/vim-fugitive')

" Shortcuts
command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

