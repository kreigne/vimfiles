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
filetype plugin indent on
syntax on

" terminal colors
set t_Co=256

" indentation
set autoindent

" white space blamer
set list
set listchars=tab:\ ¬,trail:.

" nice statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %{fugitive#statusline()}

" enabling mouse
set mouse=a

" interface stuff
set number
colorscheme xc_inspired

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
let g:sparkupExecuteMapping='<D-e>'

" fuzzyfinder
let g:fuf_coveragefile_globPatterns=['**/*.h', '**/*.c', '**/*.rb', '**/*.js', '**/*.erb', '**/*.haml', '**/*.html', '**/*.rake', '**/*.css']
nmap <C-f> :FufCoverageFile<cr>
nmap <C-f> <C-o>:FufCoverageFile<cr>

" macvim config
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif
