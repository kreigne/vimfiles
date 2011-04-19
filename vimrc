" avoiding problems with macvim and zsh
set shell=/bin/bash

" load pathogen stuff
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

" general config
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.obj,*.swp,*~,#*#
set visualbell
set cursorline
set ttyfast
set ruler
set linespace=2
set backspace=indent,eol,start
set laststatus=2
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
syntax on

" indentation
set sw=2
set sts=2
set expandtab
set autoindent

" white space blamer
set list
set listchars=tab:\ ¬,trail:.

" nice statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %{fugitive#statusline()}

" interface stuff
set go-=T
set go-=L
set go-=r
set number
set bg=dark
set lines=50
set columns=100
set guifont=Monaco:h10
colorscheme molokai

" mappings
map <C-J> <C-w>j<C-w>_
map <C-K> <C-w>k<C-w>_
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <F3> :NERDTreeToggle<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>a :Ack<space>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>w <C-w><C-v>
nnoremap <leader>f :set lines=100 columns=400<CR>

" macvim config
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
else
  map <leader>t <Esc>
endif
