if empty(glob('$XDG_DATA_HOME/vim/autoload/plug.vim'))
  silent !curl -fLo $XDG_DATA_HOME/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('$XDG_DATA_HOME/vim/bundle')

" Plug 'airblade/vim-rooter'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/syntastic'
let g:syntastic_html_validator_parser = 'html5'
"let g:syntastic_html_checkers = ['w3', 'validator']
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_markdown_checkers = ['mdl', 'proselint']
let g:syntastic_python_checkers = ['pep8', 'python'] " 'pylint'
let b:syntastic_c_cflags = '-I/usr/include/SDL2 -I/usr/include/glib-2.0 -I/usr/include/gtk-3.0'
let g:syntastic_c_compiler = 'clang'
let b:syntastic_cpp_cflags = '-I/usr/include/qt/QtWidgets -I/usr/include/qt/QtTest -I/usr/include/qt/QtGui -I/usr/include/qt/QtCore -I/usr/include/qt' " -I/usr/include/qt/QtOpenGL -I/usr/include/qt/QtQuick -I/usr/include/qt/QtQml -I/usr/include/qt/QtNetwork
let g:syntastic_html_tidy_exec = '/usr/bin/tidy5'

""" Better alternatives ??
" Plug 'coala/coala-vim'

" Plug 'neomake/neomake'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM GNUPG
" """""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'jamessan/vim-gnupg'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM FUGITIVE (Git Wrapper)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM GITGUTTER (Git Status bar)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" lang pack for vim (syntax, compiler, indent, ...)
" """""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['jsx', 'latex']

"""" VIM POLYGLOT ALTERNATIVE SYNTAX HIGHLIGHTERS """"
" Plug 'hail2u/vim-css3-syntax'
""Plug 'skammer/vim-css-color' " f**k slow
" Plug 'groenewege/vim-less'
" Plug 'othree/html5.vim'
" Plug 'exu/pgsql.vim'
" Plug 'hdima/python-syntax'
let python_highlight_all = 1
" Plug 'pangloss/vim-javascript'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
" set conceallevel=2
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = [
    \'c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'rust=rust']
" Plug 'justinmk/vim-syntax-extra'
" Plug 'rust-lang/rust.vim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR SCHEME
" """""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'wombat256.vim'
Plug 'flazz/vim-colorschemes'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE
" """""""""""""""""""""""""""""""""""""""""""""""""""""
""" https://github.com/bling/vim-airline/blob/master/doc/airline.txt
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = '∥'
let g:airline_symbols.readonly = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#disable_rtp_load = 1
let g:airline#extensions#syntastic#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Google Code Fmt
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Plug 'google/vim-glaive'
" Glaive codefmt plugin[mappings]

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Matching Tag on HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'gregsexton/MatchTag', {'for': ['html', 'xml']}

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ctrlpvim/ctrlp.vim', {'on': 'CtrlP'}
map <C-p> :CtrlP<CR>
" let g:ctrlp_cmd = 'CtrlPMRU'
Plug 'fisadev/vim-ctrlp-cmdpalette', {'on': 'CtrlP'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Github Issues
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'jaxbot/github-issues.vim'
" let g:github_same_window = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang colored C/C++ code
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if !has('nvim') && (v:version > 704 || has('patch330'))
Plug 'jeaye/color_coded', {
    \'for': ['c', 'cpp'],
    \'do': 'cmake -GNinja -DDOWNLOAD_CLANG=0 . && ninja'
    \}
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope_maps.vim Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'steffanc/cscopemaps.vim'
set timeoutlen=4000
set ttimeout

" Focus on your work more
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
let g:goyo_height='90%'
let g:goyo_width=80

" Plug 'ivalkeen/vim-simpledb'
" let g:simpledb_show_timing = 0

" Plug 'NLKNguyen/papercolor-theme'

"Plug 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size=1
"let g:indent_guides_space_guides = 1
"let g:indent_guides_enable_on_vim_startup = 1

set list lcs=tab:\¦\.
"Plug 'Yggdroot/indentLine'
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
" let g:indentLine_char = '|'
"let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#09AA08'
"let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_leadingSpaceChar = '.'  " ˰··
"let g:indentLine_leadingSpaceEnabled = 1

Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "▲",
    \ "Staged"    : "+",
    \ "Untracked" : "＊",
    \ "Renamed"   : "→",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "!",
    \ "Clean"     : "✓",
    \ "Unknown"   : "?",
    \ }

" Plug 'ryanoasis/vim-devicons'
" let g:airline_powerline_fonts=1


" Plug 'taglist.vim'
" let Tlist_Compact_Format = 1
" let Tlist_GainFocus_On_ToggleOpen = 1
" let Tlist_Close_On_Select = 1
" nnoremap <C-l> :TlistToggle<CR>

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
nnoremap <C-l> :TagbarToggle<CR>
 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}
let g:tagbar_type_ada = {
    \ 'ctagstype': 'ada',
    \ 'kinds' : [
        \'P:package specs',
        \'p:packages',
        \'t:type',
        \'u:subtypes',
        \'c:record type components',
        \'l:enum type literals',
        \'v:variables',
        \'f:formal parameters',
        \'n:constants',
        \'x:exceptions',
        \'R:subprogram specs',
        \'r:subprograms',
        \'K:task specs',
        \'k:tasks',
        \'O:protected data specs',
        \'o:protected data',
        \'e:entries',
        \'b:labels',
        \'i:identifiers'
    \]
    \}
let g:tagbar_type_make = {
            \ 'kinds':[
                \ 'm:macros',
                \ 't:targets'
            \ ]
\}
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3',
        \ 'l:Heading_L4',
        \ 'm:Heading_L5',
        \ 'n:Heading_L6'
    \ ]
\ }

" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Plug 'SirVer/ultisnips'

""" auto set :make compiler based on file extension
Plug 'tpope/vim-dispatch'

""" Run single file
Plug 'xuhdev/SingleCompile'
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
nmap <F11> :SCCompileRunAsync<cr>
autocmd FileType markdown call SingleCompile#SetCompilerTemplate('html', 'qutebrowser', 'QuteBrowser', 'qutebrowser', '', '')
autocmd FileType markdown call SingleCompile#ChooseCompiler('html', $BROWSER)

""" comment bloks
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'Valloric/YouCompleteMe', {
    \'do': 'python3 install.py --system-libclang --system-boost --all'
    \}
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/home/lejenome/git/rust/src'
let g:ycm_confirm_extra_conf = 0

" Plug 'CRefVim', {'for': 'c'}


Plug 'tfnico/vim-gradle', {'for': 'gradle'}
Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'gradle']}
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
let g:syntastic_java_javac_classpath = 'src/:src/*/java/:lib/'

" PHP Completion
Plug 'shawncplus/phpcomplete.vim', {'for': 'php'}
" let g:phpcomplete_parse_docblock_comments = 1

Plug 'joonty/vdebug', {'for': 'php'}

" Plug 'Ada-Bundle'

Plug 'jpalardy/vim-slime'
let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
let g:slime_paste_file = "$XDG_CACHE_HOME/slime_paste"
""" ctrl + double `c`, default pane name, select :.0 for pane 0 on current win

Plug 'lervag/vimtex', {'for': ['tex', 'latex', 'plaintex']}

Plug 'blindFS/vim-taskwarrior'

call plug#end()            " required
