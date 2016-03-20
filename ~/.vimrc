" uncommon settings
set nocompatible
autocmd! bufwritepost .vimrc source %
set ttyfast
set encoding=utf-8   " use UTF-8 encoding

set backupdir=~/.cache/vim-backup
set viminfo+=n~/.cache/viminfo

"set backup
"set backupdir   =$HOME/.vim/files/backup/
"set backupext   =-vimbackup
"set backupskip  =
"set directory   =$HOME/.vim/files/swap//
"set updatecount =100
"set undofile
"set undodir     =$HOME/.vim/files/undo/
"set viminfo     ='100,n$HOME/.vim/files/info/viminfo

" vundle
source ~/.vim/vundle.vim

" common settings
source ~/.vim/common.vim
