" Mouse and backspace
set mouse=a
set bs=2     " make backspace behave like normal again

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

inoremap <C-C> <Esc>
" nnoremap <C-C> :q<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

let mapleader = ","
" set timeoutlen=1000

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h

" easier moving between tabs
map <Leader>p <esc>:previous<CR>
map <Leader>n <esc>:next<CR>

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

" force 256 colors support
set t_Co=256

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on
" enable all Python syntax highlighting features
let python_highlight_all = 1

" Automaticlly indent when adding a curly barket, ...
set smartindent

" show the matching part of the pair for [] {} and ()
set showmatch

" show a visual line under the cursor's current line
"set cursorline

" speed up vim cursor movement
set synmaxcol=200 " Limit syntax highlighting
"set ttyscroll=3
set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems
set nocursorcolumn
set nocursorline
set norelativenumber
"syntax sync minlines=256

" Showing line numbers and length
set number  " show line numbers
set relativenumber
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
set nobackup
set nowritebackup
set noswapfile

set ruler            " show line number, cursor position
set showcmd          " show incomplete commands

au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.http,*.post set filetype=http
au BufRead,BufNewFile *.flux set filetype=flux

" fixes for status line
"set timeoutlen=50
set laststatus=2

" Netrw settings
let g:netrw_altv              = 1
let g:netrw_liststyle         = 1

if !has('nvim') && (v:version > 704 || has('patch401'))
	set cm=blowfish2 "change crypto algo to better one
endif
set wildignore+=*.pyc,*.o,*.class,*.lo,.git,vendor/*,node_modules/**,bower_components/**

" undo changes backups
set undodir=$XDG_CACHE_HOME " better be on a tmpfs type mount point
set undofile
set undoreload=10000

" File Types special configs
autocmd FileType php,python,java,cs setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79 expandtab autoindent
autocmd FileType javascript,css,html,xml,htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79 expandtab autoindent
autocmd FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8 textwidth=79 autoindent

autocmd FileType tex,plaintex,latex setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent

autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us,fr textwidth=79
autocmd FileType mail setlocal spell spelllang=en_us,fr textwidth=79

autocmd BufNewFile,BufRead *.pgsql,*.plpgsql set filetype=sql syntax=pgsql
autocmd BufRead,BufNewFile *.xaml set filetype=xml

autocmd FileType python set breakindentopt=shift:4
let python_highlight_all = 1

set wildmenu " Turn on WiLd menu

" change split direction
set splitbelow
set splitright

" Change Max allowed opened tabs to 100
set tabpagemax=100

" Enable folding with the spacebar
"nnoremap <space> za
set foldmethod=indent
set foldlevel=99

if $VIM_BG == "light"
	set background=light
elseif $VIM_BG == "dark"
	set background=dark
endif
if $VIM_COLORSCHEME != ""
	colorscheme $VIM_COLORSCHEME
else
	colorscheme wombat256mod
endif

" want n to always search forward and N backward
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" complete redraw and fix for screen
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>


autocmd FileType ant compiler ant
autocmd BufNewFile,BufRead *.gradle compiler gradle
autocmd FileType csharp compiler xbuild
autocmd FileType python setlocal makeprg=python\ %


" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamedplus

if !has("clipboard")
	" xnoremap "+y y:call system("wl-copy -n", @")<cr>
	" xnoremap "*y y:call system("wl-copy -n --primary", @")<cr>
	" vnoremap "+y y:call system("wl-copy -n", @")<cr>
	" vnoremap "*y y:call system("wl-copy -n --primary", @")<cr>
	" nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
	" nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

	xnoremap "+y y:call system("xsel -i -b", @")<cr>
	xnoremap "*y y:call system("xsel -i -p", @")<cr>
	vnoremap "+y y:call system("xsel -i -b", @")<cr>
	vnoremap "*y y:call system("xsel -i -p", @")<cr>
	nnoremap "+p :let @"=substitute(system("xsel -o -b"), '<C-v><C-m>', '', 'g')<cr>p
	nnoremap "*p :let @"=substitute(system("xsel -o -p"), '<C-v><C-m>', '', 'g')<cr>p
endif
