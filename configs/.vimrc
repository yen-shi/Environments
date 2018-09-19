set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim "Set runtime path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Add plugins here
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter' "Use '\cc' to comment, '\c<space>' to toggle.
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

"Original vim configuration
syntax on               " 語法上色顯示
set ai                  " 自動縮排
set shiftwidth=2        " 設定縮排寬度 = 4 
set tabstop=2           " tab 的字元數
set softtabstop=2       
set expandtab           " 用 space 代替 tab
set backspace=2         " 在 insert 也可用 backspace
set ic                  " 設定搜尋忽略大小寫
set number              " 顯示行號
set incsearch           " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent         " 設定 smartindent
set history=100         " 保留 100 個使用過的指令
set showcmd             " 顯示指令於 status line 
set laststatus=2        " 顯示 status line
set mouse=a             " 使用滑鼠
set background=dark     " 設定 background
" set rnu
set cursorline
" colorscheme <name>

"Tab
nnoremap <C-H> <Esc>:tabp<CR>
nnoremap <C-L> <Esc>:tabn<CR>

"NerdTree
nnoremap <C-N> <Esc>:NERDTree<CR>

"C++
noremap <buffer><F5> :! './%<'<CR>
noremap <buffer><F6> :! './%<' < './%<.in'<CR>
noremap <buffer><F7> :! './%<' < './%<.in' > './%<.out'<CR>
noremap <buffer><F9> :! g++-7 -std=c++14 -O2 -Wall -Wshadow '%' -o '%<'<CR>

"NerdComment
let g:NERDSpaceDelims = 1

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='dark'

"ALE for vim realtime compiler

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_python_pylint_quiet_messages = {
    \ "regex" : ['\m\[missing-docstring\]',
               \ '\m\[unused-import\]']}

"Syntastic check
noremap <buffer><F3> :SyntasticToggleMode<CR>
noremap <buffer><F4> :SyntasticCheck<CR>
