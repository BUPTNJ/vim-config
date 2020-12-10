" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/seoul256.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set nu
set number
set cursorline
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set showmatch
set tabstop=4
set shiftwidth=4
set autoindent
set paste
set laststatus=2
set ruler

