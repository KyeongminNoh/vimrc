 " visual.vim
 
 " air-line
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#enabled = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
 endif

 " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'
 
 " airline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''

 " Enable syntax highlighting
 syntax on

 " Line numbers on
 set number
 " Enable relative number for line(Constantly computing the relative nubmersis expensive)
 " set relativenumber
 " Show ruler
 set ruler
 " Always show tab pannel
 set showtabline=4
 " Show the command typing
 set showcmd
 " Show matching brackets
 set showmatch
 " Bracket blinking
 set matchtime=5
 " Show the current mode
 set showmode
 " Mark 80th column with a highlight color
" if exists('+colorcolumn')
 "  set colorcolumn=80
 "  highlight ColorColumn ctermbg=gray
" endif
 " Highlight current line 
 set cursorline
 " Show cursorline for active window only
 augroup highlight_active_window
 autocmd!
 autocmd BufEnter * setlocal cursorline
 autocmd BufLeave * setlocal nocursorline
 augroup END
 " No blinking
 set visualbell
 " No noise
 set noerrorbells
 " Minimal number of screen lines to keep above and below the cursor
 set scrolloff=3
 " Native customized statusline, if airline is not available
 set statusline=%1*%{winnr()}\ %*%<\ %f\ %h%m%r%=%l,%c%V\ (%P)
 " Always show status line.
 set laststatus=2
 " No conceal
 set conceallevel=0
 " Use a block cursor in normal mode, i-beam cursor in insertmode
 if empty($TMUX)
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
 else
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
 endif

 """ Match and search {{{
 " Highlight searches
 set hlsearch
 " Ignore case of searches
 set ignorecase
 " be sensitive when there's a capital letter
 set smartcase
 " Highlight dynamically as pattern is typed
 set incsearch 
 """ }}}
 """ Theme {{{
 " Enable 256 colors in vim
 set t_Co=256
 " Disable Background Color Erase (BCE) so that color schemes
 " work properly when Vim is used inside tmux and GNU screen
 if &term =~ '256color'
 set t_ut=
 endif
 " Set to 'dark' to use colors that look good on dark background
 " Set to 'light' to use colors that look good on a light background
 " set background=dark
 " Set colorscheme
 " colorscheme summerfruit256
 " colorscheme gruvbox
 " colorscheme seoul256-light
 " colorscheme molokai
 """ }}}
