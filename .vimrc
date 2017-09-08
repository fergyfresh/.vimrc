execute pathogen#infect()
set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
filetype plugin indent on
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set expandtab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
colorscheme darkblue  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
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
"--- Use F2 to toggle paste mode that disables auto intenting 
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
