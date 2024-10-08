set runtimepath+=~/AppData/Local/nvim-data


call plug#begin("~/.vim/plugged")

 " Plugin Section
 Plug 'dracula/vim'					" Theme
 Plug 'ryanoasis/vim-devicons'
 "Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'preservim/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'tpope/vim-surround'				                    " Surrounding ysw
 Plug 'vim-airline/vim-airline' 			                " Status bar
 Plug 'vim-airline/vim-airline-themes'
 Plug 'terryma/vim-multiple-cursors' 			            " CTRL + N for multiple cursor
 Plug 'rafi/awesome-vim-colorschemes'		            	" Retro Scheme
 Plug 'tc50cal/vim-terminal' 		                		" Vim Terminal
 Plug 'preservim/tagbar'                					" Tagbar for code navigation
 Plug 'easymotion/vim-easymotion'
 Plug 'unblevable/quick-scope'
 Plug 'machakann/vim-highlightedyank'

call plug#end()


" Easymotion leader key map
let mapleader=" "

" Map stop showing highlights.
nnoremap <ESC><ESC> :noh<CR>

" Yank til end of line. Default is to yank whole line as yy.
nnoremap Y y$

" Put search results in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

" Don't use Ex mode, use Q for formatting.
map Q gq

" Map <Ctrl>-Up/Down to VIM key #/* to jump to previous/next whole word.
nnoremap <C-Up> #
nnoremap <C-Down> *

" Quick window navigation in split window
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h


set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set smarttab                " sets `tabstop` number of spaces when the tab is pressed
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " add relative line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.




" Remap multiple-cursors shortcuts to match terryma/vim-multiple-cursors
nmap <C-n> <Plug>NextWholeOccurrence
xmap <C-n> <Plug>NextWholeOccurrence
nmap g<C-n> <Plug>NextOccurrence
xmap g<C-n> <Plug>NextOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence

" Note that the default <A-n> and g<A-n> shortcuts don't work on Mac due to dead keys.
" <A-n> is used to enter accented text e.g. ñ
" Feel free to pick your own mappings that are not affected. I like to use <leader>
nmap <leader><C-n> <Plug>AllWholeOccurrences
xmap <leader><C-n> <Plug>AllWholeOccurrences
nmap <leader>g<C-n> <Plug>AllOccurrences
xmap <leader>g<C-n> <Plug>AllOccurrences


" Remap NERDTree
nnoremap <leader><leader>z :NERDTreeToggle<CR>
nnoremap <leader><leader>x :NERDTreeFind<CR>


" Remap Airline switch tabs
nnoremap <C-PageUp> :bprevious<CR>
nnoremap <C-PageDown> :bnext<CR>
nnoremap <C-Del> :bd<CR>


" Plugin settings
let g:airline#extensions#tabline#enabled = 1
" Quickscope highlight keys settings
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Highlighted Yank Duration
let g:highlightedyank_highlight_duration = 600

" Color Scheme settings
colorscheme tender
