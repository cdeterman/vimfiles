set nocompatible
set fileencoding=utf8
set backspace=2
set number
set t_Co=256
colorscheme skittles_berry

let mapleader = ','

" NerdTree settings
map <leader>n :NERDTreeToggle<CR>
let NERDTreeDirArrows=0
let NERDTreeShowHidden=1

" Python-mode settings
" Activate python documentation
let g:pydoc_cmd = 'python -m pydoc'
" Map key to run python code
let g:pymode_run_bind = '<C-S-y>'

" Tmux support settings within screen plugin
let g:ScreeImpl = 'Tmux'

" Vim-R-Plugin settings
let vimrplugin_screenvsplit = 1 "For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'
" Specify to not use screenrc settings
let g:vimrplugin_noscreenrc = 1
" See documentation in Vim buffer
let vimrplugin_vimpage = "no"
" Start R with F2
" Remapped from default \rf
map <F2> <Plug>Rstart
imap <F2> <Plug>Rstart
vmap <F2> <Plug>Rstart
" send selected lines to R with space bar
" remapped from default \l
vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
nmap <Space> <Plug>RDSendLine

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
