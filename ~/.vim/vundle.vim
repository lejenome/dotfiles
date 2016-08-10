if has('vim_starting')
  set rtp+=~/.vim/bundle/Vundle.vim
  if !isdirectory(expand('~/.vim/bundle/Vundle.vim'))
    echo "Installing Vundle\n"
    silent execute '!mkdir -p ~/.vim/bundle'
    silent execute '!git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim'
  endif
endif
call vundle#begin(expand("~/.vim/bundle"))
Plugin 'gmarik/Vundle.vim'

Plugin 'airblade/vim-rooter'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
let g:syntastic_html_validator_parser = 'html5'
"let g:syntastic_html_checkers = ['w3', 'validator']
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_python_checkers = ['pep8', 'python'] " 'pylint'
let b:syntastic_c_cflags = '-I/usr/include/SDL2 -I/usr/include/glib-2.0 -I/usr/include/gtk-3.0'
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
" VIM GITGUTTER (Git Status bar)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'airblade/vim-gitgutter'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" lang pack for vim (syntax, compiler, indent, ...)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'sheerun/vim-polyglot'
"let g:polyglot_disabled = ['html5']

"""" VIM POLYGLOT ALTERNATIVE SYNTAX HIGHLIGHTERS """"
" Plugin 'hail2u/vim-css3-syntax'
""Plugin 'skammer/vim-css-color' " f**k slow
" Plugin 'groenewege/vim-less'
" Plugin 'othree/html5.vim'
" Plugin 'exu/pgsql.vim'
" Plugin 'hdima/python-syntax'
let python_highlight_all = 1
" Plugin 'pangloss/vim-javascript'
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" set conceallevel=2
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini']


" """""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR SCHEME
" """""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'wombat256.vim'
Plugin 'flazz/vim-colorschemes'

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
"if !has('nvim') && (v:version > 704 || has('patch330'))
"	Plugin 'jeaye/color_coded'
"endif

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

" Plugin 'ivalkeen/vim-simpledb'
" let g:simpledb_show_timing = 0

" Plugin 'NLKNguyen/papercolor-theme'

"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=1
"let g:indent_guides_space_guides = 1
"let g:indent_guides_enable_on_vim_startup = 1

Plugin 'Yggdroot/indentLine'
set list lcs=tab:\¦\.
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
" let g:indentLine_char = '|'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_leadingSpaceChar = '.'  " ˰··
let g:indentLine_leadingSpaceEnabled = 1

Plugin 'justinmk/vim-syntax-extra'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?",
    \ }

" Plugin 'ryanoasis/vim-devicons'
" let g:airline_powerline_fonts=1


"Plugin 'taglist.vim'
"let Tlist_Compact_Format = 1
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1
"nnoremap <C-l> :TlistToggle<CR>

Plugin 'majutsushi/tagbar'
nnoremap <C-l> :TagbarToggle<CR>

" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'

" Plugin 'SirVer/ultisnips'

Plugin 'tpope/vim-dispatch'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


Plugin 'tfnico/vim-gradle'
Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

let g:syntastic_java_javac_classpath = 'src/:src/*/java/:lib/'

Plugin 'Ada-Bundle'

Plugin 'jpalardy/vim-slime'
let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
let g:slime_paste_file = "$HOME/.cache/slime_paste"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
