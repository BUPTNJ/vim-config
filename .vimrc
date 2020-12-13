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
Plug 'ycm-core/YouCompleteMe'
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

map <F4> :Ack -i  
map <C-t> :NERDTree <CR>

" YouCompleteMe
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'

" C family Completion Path
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" 跳转快捷键
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_semantic_triggers =  {
\   'c,cpp,python,java,go,erlang,perl':['re!\w{2}'],
\   'cs,lua,javascript':['re!\w{2}'],
\}
"ycm默认需要按ctrl + space 来进行补全，可以在上面的花括号里面加入下面两行代码来直接进行补全[不需要按键]

let g:ycm_add_preview_to_completeopt = 0
"关闭函数原型提示

let g:ycm_show_diagnostics_ui=0
"关闭代码检查
