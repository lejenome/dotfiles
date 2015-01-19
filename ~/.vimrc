" uncommon settings
set nocompatible
autocmd! bufwritepost .vimrc source %
set ttyfast
set encoding=utf-8   " use UTF-8 encoding

set backupdir=~/.cache/vim-backup
set viminfo+=n~/.cache/viminfo

" common settings
source ~/.vim/common.vim

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/bundle")

" """""""""""""""""""""""""""""""""""""""""""""""""""""
" POWERLINE
Plugin 'Lokaltog/powerline'
let g:Powerline_symbols = 'unicode'
set laststatus=2

source ~/.vim/vundle.vim
