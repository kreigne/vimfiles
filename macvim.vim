set go-=T
set go-=L
set go-=r
set lines=50
set columns=100
set guifont=Inconsolata:h14
set antialias

" maximize screen
nnoremap <leader>f :set lines=100 columns=400<CR>

if &background == "dark"
    "hi normal guibg=black
    set transparency=7
endif
