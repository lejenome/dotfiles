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
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_python_checkers = ['pep8', 'python'] " 'pylint'
let b:syntastic_c_cflags = '-I/usr/include/SDL2'
let g:syntastic_c_compiler = 'clang'
let b:syntastic_cpp_cflags = '-I/usr/include/qt/QtWidgets -I/usr/include/qt/QtTest -I/usr/include/qt/QtGui -I/usr/include/qt/QtCore -I/usr/include/qt' " -I/usr/include/qt/QtOpenGL -I/usr/include/qt/QtQuick -I/usr/include/qt/QtQml -I/usr/include/qt/QtNetwork
let g:syntastic_html_tidy_exec = '/usr/bin/tidy5'


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
"Plugin 'skammer/vim-css-color' " f**k slow
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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
" Google Code Fmt
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmtlib'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
" Glaive codefmt plugin[mappings]

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Matching Tag on HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'gregsexton/MatchTag'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMRU'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Github Issues
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jaxbot/github-issues.vim'
let g:github_same_window = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang colored C/C++ code
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jeaye/color_coded'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope_maps.vim Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'steffanc/cscopemaps.vim'
set timeoutlen=4000
set ttimeout

" Focus on your work more
Plugin 'junegunn/goyo.vim'
let g:goyo_height='90%'
let g:goyo_width=80


Plugin 'altercation/vim-colors-solarized'

Plugin 'exu/pgsql.vim'

Plugin 'ivalkeen/vim-simpledb'
let g:simpledb_show_timing = 0

Plugin 'NLKNguyen/papercolor-theme'

let python_highlight_all = 1
Plugin 'hdima/python-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'airblade/vim-gitgutter'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

Plugin 'justinmk/vim-syntax-extra'

Plugin 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>

Plugin 'ryanoasis/vim-devicons'
let g:airline_powerline_fonts=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'taglist.vim' " from pacman -S vim-taglist
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-l> :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
