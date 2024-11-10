syntax on
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set number
set textwidth=0
set wrapmargin=0
set colorcolumn=120
set pastetoggle=<F9>

nnoremap <F10> :set invnumber<CR>
inoremap <F10> <C-O>:set invnumber<CR>

au BufNewFile,BufRead *.tf set filetype=terraform
autocmd FileType terraform set tabstop=2|set shiftwidth=2|set expandtab

" wrap to the next/previous line when moving the cursor to either end of a line
set whichwrap+=<,>,[,]

" backspace over indent, EOL, and where the insert started
set backspace=indent,eol,start

" re-open to the same line the cursor was on when the file was closed except when writing commit messages
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g'\"" | endif
endif

" press enter to un-highlight search terms
nnoremap <CR> :noh<CR><CR>

" map accidental capitalizations to the lower case character
command! Wq wq
command! WQ wq
command! Q q
command! W w

" Set the color of python comments
hi Comment ctermfg=DarkGreen

" increase the size of the clipboard and the number of lines that can be copied
"set viminfo='100,<2000,s200,h
"set clipboard=unnamedplus

" map 'Q' and 'q' to no-op
map Q <Nop>
map q <Nop>

if has("autocmd")
    " If the filetype is Makefile then we need to use tabs
    autocmd FileType make set noexpandtab
endif
