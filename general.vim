set encoding=utf-8
set fileencodings=utf-8,euc-kr
set nocompatible
set runtimepath+=~/.vim

""" tab completion
set wildmenu
set wildignore=*.swp,*.swo,*.class          

set history=256
set clipboard=unnamed



""" window options
set autochdir
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

if !has('nvim')
	set viminfo='100,n$HOME/.viminfo
endif

set shell=sh


set modeline
set modelines=4

  
""" tab space and indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
