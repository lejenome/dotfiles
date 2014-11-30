set nocompatible " use Vim settings instead of Vi settings
autocmd! bufwritepost .vimrc source % " Automatic reloading of .vimrc

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2     " make backspace behave like normal again

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Automaticlly indent when adding a curly barket, ...
set smartindent

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set shiftround
"set expandtab
set smarttab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set backupdir=/tmp/$USER-vim-backup
set nobackup
set nowritebackup
set noswapfile

" Settings for powerline (AUR:python-powerline-git)
" git://github.com/Lokaltog/powerline.git
let g:Powerline_symbols = 'unicode'
set laststatus=2


set encoding=utf-8   " use UTF-8 encoding
set ruler            " show line number, cursor position
set showcmd          " show incomplete commands
set ttyfast          " faster redraw

au BufRead,BufNewFile *.less set filetype=css

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
let g:syntastic_html_validator_parser = 'html5'
"let g:syntastic_html_checkers = ['w3', 'validator']
let g:syntastic_html_checkers = ['w3']
let g:syntastic_python_checkers = ['pep8', 'python']
