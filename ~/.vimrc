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

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highliht using libClang
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jeaye/color_coded'

source ~/.vim/vundle.vim
