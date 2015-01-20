" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
" """""""""""""""""""""""""""""""""""""""""""""""""""""
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
let g:syntastic_html_validator_parser = 'html5'
"let g:syntastic_html_checkers = ['w3', 'validator']
let g:syntastic_html_checkers = ['w3']
let g:syntastic_python_checkers = ['pep8', 'python']


" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM GNUPG
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jamessan/vim-gnupg'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM FUGITIVE (Git Wrapper)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" CSS3 & LESS Syntax
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'hail2u/vim-css3-syntax'
Plugin 'skammer/vim-css-color'
Plugin 'groenewege/vim-less'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML5 Syntax
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/html5.vim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR SCHEME
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'wombat256.vim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE
" https://github.com/bling/vim-airline/blob/master/doc/airline.txt
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish' "or tomorrow
let g:airline_mode_map = {
     \ '__' : '-',
     \ 'n'  : 'N',
     \ 'i'  : 'I',
     \ 'R'  : 'R',
     \ 'c'  : 'C',
     \ 'v'  : 'V',
     \ 'V'  : 'V',
     \ '' : 'V',
     \ 's'  : 'S',
     \ 'S'  : 'S',
     \ '' : 'S',
     \ }
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
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
let g:airline#extensions#disable_rtp_load = 1
let g:airline#extensions#syntastic#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme wombat256mod
