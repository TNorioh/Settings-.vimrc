call plug#begin()
" Plugins aqui
 Plug 'sainnhe/sonokai'
 Plug 'ghifarit53/tokyonight-vim'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'ryanoasis/vim-devicons' 
 Plug 'preservim/nerdtree'
 Plug 'honza/vim-snippets'
 PLug 'jiangmiao/auto-pairs
 Plug 'vim-scripts/indentpython.vim'
 Plug 'vim-syntastic/syntastic'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'preservim/nerdcommenter'
 Plug 'Yggdroot/indentLine' 
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'vim/colorschemes'
call plug#end()


" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai
colorscheme 
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the curso
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
set history=5000
set number
set cursorline
set autoindent
set clipboard=unnamedplus
set foldmethod=syntax
set filetype=python
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any


" Remaps """"""""""
nmap <C-z> :u<CR>
nmap <C-s> :w<CR>
nmap <C-c> :yy<CR>
nmap <C-v> :p<CR>

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" remaps aqui
" Adding an empty line below, above and below with insert
" Create a tab
nmap te :tabe<CR>
" Delete a buffer
nmap td :bd<CR>
" Create splits
nmap th :split<CR>
nmap tv :vsplit<CR>

" Close splits and others
nmap tt :q<CR>
" Call command shortcut
nmap tc :!


" autocmd """"""""""
function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
" autocmds aqui


" AirLine """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1



" Themes """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:lightline = {'colorscheme' : 'tokyonight'}
let g:airline_theme = "sonokai"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldlevel=99
nnoremap <space> za

colo materialbox

let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

map <C-n> :NERDTreeToggle<cr>
set encoding=utf8

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='sonokai'

let g:airline#extensions#tabline#formatter = 'default'
" navegação entre os buffers
nnoremap <C-Right> :bn<cr>
nnoremap <C-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'right':
map cc <Plug>NERDCommenterInvert

let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
" let g:ale_fixers = {
"      'python': ['yapf'],
"  }
" nmap <F10> :ALEFix<CR>
" let g:ale_fix_on_save = 1
