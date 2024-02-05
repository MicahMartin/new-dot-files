set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
" set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2              " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2           " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" MAPPINGS "
let mapleader="\<space>"
let g:mapleader="\<space>"
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>l :NvimTreeToggle<cr>
set laststatus=2
set statusline+=%F

" easily jump between splits
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-\> <C-w><C-p>
" treat long lines as break lines
map j gj
map k gk
nmap <leader>- :bprevious<CR>
nmap <leader>= :bnext<CR>
" close the current buffer/tab
map <leader>bd :bd<CR>
nmap <leader>n :set invnumber<CR>
" clear the screen, remove search highlights
nnoremap <C-l> :nohl<CR><C-l>

nmap <leader>R <Plug>RestNvim

""""""""
" Misc "
""""""""

" copy current file path to clipboard
nnoremap <leader>cf :let @*=expand("%")<CR>
" for full path
nnoremap <leader>cF :let @*=expand("%:p")<CR>

set background=dark
set wildignore=*.0,*~,*.pyc
set wildignore+=.git,*/node_modules/*,*.pyc,

lua require('plugins')
