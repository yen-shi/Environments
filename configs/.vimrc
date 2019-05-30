set nocompatible
filetype off

"Use Vundle
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Add plugins here
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter' " use '\cc' to comment and '\c<space>' to toggle
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Original vim configuration
syntax on               " highlight syntax with colors
set ai                  " auto indent
set shiftwidth=2        " indent width = 2
set tabstop=2
set softtabstop=2
set expandtab           " Substitue tab by space
set ic                  " set case insensitive search
set number              " line number
set incsearch           " incremental search
set smartindent
set history=100         " 100 command history
set laststatus=2        " show status line
set showcmd             " show commands on the status line
set mouse=r             " can use mouse to select
set background=dark     " set background
set cursorline          " current line with underline

" set rnu               " relative number
" colorscheme <name>    " use specific colorscheme

"Switch rab
nnoremap <C-H> <Esc>:tabp<CR>
nnoremap <C-L> <Esc>:tabn<CR>

"NerdTree
nnoremap <C-N> <Esc>:NERDTree<CR>

"NerdComment
let g:NERDSpaceDelims = 1

"Compile C++
noremap <buffer><F5> :! './%<'<CR>
noremap <buffer><F6> :! './%<' < './%<.in'<CR>
noremap <buffer><F7> :! './%<' < './%<.in' > './%<.out'<CR>
noremap <buffer><F9> :! g++-7 -std=c++14 -O2 -Wall -Wshadow '%' -o '%<'<CR>

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='dark'

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5

"PyLint configuration
let g:syntastic_python_pylint_quiet_messages = {
    \ "regex" : ['\m\[missing-docstring\]',
               \ '\m\[unused-import\]']}

"Syntastic check
noremap <buffer><F3> :SyntasticToggleMode<CR>
noremap <buffer><F4> :SyntasticCheck<CR>
