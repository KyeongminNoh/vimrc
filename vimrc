call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/promptline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
" Plug 'marijnh/tern_for_vim'
Plug 'dracula/vim'
call plug#end()
"
if filereadable(expand("\~/.vim/general.vim"))
	source \~/.vim/general.vim
endif

if filereadable(expand("\~/.vim/key-mapping.vim"))
	source \~/.vim/key-mapping.vim
endif

if filereadable(expand("\~/.vim/visual.vim"))
	source \~/.vim/visual.vim
endif

" delimitMate
imap <C-c> <CR><Esc>O

" YouCompleteMe
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview


