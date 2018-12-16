
"----------------------------"
"----------Vundle------------"
"----------------------------"
set wrap
set number
set dictionary +=/usr/include
set ts=4
syntax on
set hlsearch
set cursorline
set fileencodings=ucs-bom,utf-8,GB18030,gbk

"vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

"---------------------------"
"------ YouCompleteMe -------"
"----------------------------"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
  
  
" YouCompleteMe
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项


let g:auto_save = 1

"----------------------------"
"--------   NERDTree  -------"
"----------------------------"
"set shortcut key
"map <F4> :NERDTreeMirror<CR>
"map <F4> :NERDTreeToggle<CR>

"----------------------------"
"--------    CtrlP    -------"
"----------------------------"
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }


"----------------------------"
"--------  Syntastic  -------"
"----------------------------"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let b:syntastic_cpp_cflags = '-std=c++11 -w'

"----------------------------"
"------ YouCompleteMe -------"
"----------------------------"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"----------------------------"
"--------Global Config-------"
"----------------------------"
syntax on
set nu
"colorscheme darkblue
set noswapfile
set nobackup
set mouse=a

filetype on

set history=1000
set cursorline
"set cursorcolumn

set autoindent
set cindent
set smartindent

"set expandtab " space grid replace tab
set backspace=2
set tabstop=4
set shiftwidth=4
set softtabstop=4

set linebreak
set showmatch

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix
"set encoding=prc
set encoding=utf-8

set hlsearch
set incsearch

set laststatus=2
set ruler

"no \n
set nowrap

"colors
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"syntax enable
"set background=dark
"colorscheme solarized
"set background=light
"colorscheme solarized

autocmd BufNewFile *.[ch], exec ":call Addc()"

function Addc()
    call setline(1, " ///")
	call append(1, " /// @file    :" .expand("%:t"))
	call append(2, " /// @author  :wmjtxt(972213032@qq.com)")
	call append(3, " /// @date    :".strftime("%Y-%m-%d %H:%M:%S(NewYork time)"))
	call append(4, " /// @quote   :")
	call append(5, " ///")
	call append(6, " ")
	call append(7, "#include <stdio.h>")
	call append(8, "")
	call append(9, "int main(){")
	call append(10, "	")
	call append(11, "	return 0;")
	call append(12, "}")
endf


autocmd BufNewFile *.hpp,*.cpp,*.cc exec ":call Addcpp()"

function Addcpp()
    call setline(1, " ///")
	call append(1, " /// @file    :" .expand("%:t"))
	call append(2, " /// @author  :wmjtxt(972213032@qq.com)")
	call append(3, " /// @date    :".strftime("%Y-%m-%d %H:%M:%S(NewYork time)"))
	call append(4, " /// @quote   :")
	call append(5, " ///")
	call append(6, " ")
	call append(7, "#include <iostream>")
	call append(8, "using namespace std;")
	call append(9, "")
	call append(10, "int main(){")
	call append(11, "	")
	call append(12, "	return 0;")
	call append(13, "}")
endf


autocmd BufNewFile *.py exec ":call Addpy()"

function Addpy()
    call setline(1, " #")
	call append(1, " # @file    :" .expand("%:t"))
	call append(2, " # @author  :wmjtxt(972213032@qq.com)")
	call append(3, " # @date    :".strftime("%Y-%m-%d %H:%M:%S(NewYork time)"))
	call append(4, " # @quote   :")
	call append(5, " #")
	call append(6, " ")
	call append(7, "import sys")
	call append(8, "import os")
endf



"set maplearder
let  mapleader = ","
map <silent> <leader>ee :!vim ~/.vimrc<cr>

augroup gzip
autocmd!
autocmd BufReadPre,FileReadPre *.gz set bin
autocmd BufReadPost,FileReadPost   *.gz '[,']!gunzip
autocmd BufReadPost,FileReadPost   *.gz set nobin
autocmd BufReadPost,FileReadPost   *.gz execute ":doautocmd BufReadPost " . expand("%:r")
autocmd BufWritePost,FileWritePost *.gz !mv <afile> <afile>:r
autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r
autocmd FileAppendPre      *.gz !gunzip <afile>
autocmd FileAppendPre      *.gz !mv <afile>:r <afile>
autocmd FileAppendPost     *.gz !mv <afile> <afile>:r
autocmd FileAppendPost     *.gz !gzip <afile>:r
augroup END
