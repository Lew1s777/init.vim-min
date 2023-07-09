" __  __       _   _                 _           ____   ____ 
"|  \/  |_   _| \ | | ___  _____   _(_)_ __ ___ |  _ \ / ___|
"| |\/| | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \| |_) | |    
"| |  | | |_| | |\  |  __/ (_) \ V /| | | | | | |  _ <| |___ 
"|_|  |_|\__, |_| \_|\___|\___/ \_/ |_|_| |_| |_|_| \_\\____|
"        |___/                                               
"my minimal neovim configuration file
"sudo rm ~/.local/share/nvim/shada/main.shada

" ==================== Dependencies =======================
"{
"	nvim git curl python3
"}!!!require neovim optional python3 support

"" ==================== Autoload ===========================
""This only works on neovim
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
"	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" ==================== Editor behavior ====================
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
let mapleader=" "
let mapscript=","
set nocompatible
set hidden
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=3
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=4
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set updatetime=300
set shortmess+=c
"set signcolumn=yes

noremap w gk
noremap r gj
noremap a h
noremap s l
noremap A b
noremap S w
noremap W 7gk
noremap R 7gj
noremap <LEADER><CR> gf
noremap p i
noremap P I
noremap G A
noremap g a
noremap <c-a> g0
noremap <c-s> g$
noremap T V
noremap t v
noremap <c-t> <c-v>
noremap c y
noremap C Y
noremap v p
noremap x d
noremap X D
noremap <c-q> :q<CR>
noremap Q :wq<CR>
noremap <c-z> u
noremap z f
noremap Z F
noremap <c-e> :e 
noremap j nzz
noremap l Nzz
noremap <CR> nzz
noremap \ :nohlsearch<CR>
noremap F :tabe<CR>
noremap <LEADER>S :set splitright<CR>:vsplit<CR>
noremap <LEADER>A :set nosplitright<CR>:vsplit<CR>
noremap <LEADER>W :set nosplitbelow<CR>:split<CR>
noremap <LEADER>R :set splitbelow<CR>:split<CR>
noremap <LEADER>s <C-w>l
noremap <LEADER>w <C-w>k
noremap <LEADER>a <C-w>h
noremap <LEADER>r <C-w>j
noremap <LEADER><c-a> <C-w>t<C-w>H
noremap <LEADER><c-s> <C-w>t<C-w>H
noremap <LEADER><c-w> <C-w>t<C-w>K
noremap <LEADER><c-r> <C-w>t<C-w>K
noremap <down> :res +5<CR>
noremap <up> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
noremap e :tabe<CR>
noremap <c-p> :-tabnext<CR>
noremap <c-g> :+tabnext<CR>
noremap N :set nonumber<CR>:set norelativenumber<CR>
noremap <c-n> :set number<CR>:set relativenumber<CR>

noremap dd gg
noremap D G

"----------------------Greeting-------------------------
let name = "archer"
echo "Hello, " . name
