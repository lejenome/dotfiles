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

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END
call vundle#end()            " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme wombat256mod
