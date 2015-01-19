" uncommon settings
set backupdir=~/.cache/nvim-backup
set viminfo+=n~/.cache/nviminfo

" common settings
source ~/.vim/common.vim

" vundle
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin("~/.nvim/bundle")

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" FLOOBITS
Plugin 'floobits/floobits-neovim'

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish' "or tomorrow

source ~/.vim/vundle.vim
