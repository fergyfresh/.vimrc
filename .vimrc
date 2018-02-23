set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
filetype off
syntax enable

set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages

colorscheme darkblue  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
"
" Basics
"
set number
set noeb vb t_vb=
set colorcolumn=80

" 
" Indenting
"
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set noshowmode
set laststatus=2
set backspace=2

"
" Filetype specific indenting
"
autocmd FileType ruby       setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee     setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType liquid     setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby      setlocal shiftwidth=2 tabstop=2
autocmd FileType sls        setlocal shiftwidth=2 tabstop=2
autocmd FileType ocaml      setlocal shiftwidth=2 tabstop=2


set foldmethod=manual  "Lets you hide sections of code
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu
"--- Use F2 to toggle paste mode that disables auto indenting 
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode   
set ruler
set visualbell
set statusline+=%F
set laststatus=2

"--- Run JSHint by pressing F1 
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>
cnoremap <F1> JSHint
