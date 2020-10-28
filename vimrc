set autoindent
set backspace=indent,eol,start
set nu
filetype indent plugin on
autocmd BufWritePre * %s/\s\+$//e
set encoding=utf-8
set clipboard=unnamed
set noshowmode
set laststatus=2
set background=dark
syntax enable
set termguicolors
set t_Co=256
set cursorline

call plug#begin('~/.vim/plugged')

" Syntax & Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'

" Linters
Plug 'dense-analysis/ale'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'danilo-augusto/vim-afterglow'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Plugins
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'zivyangll/git-blame.vim'

" NERD
Plug 'preservim/nerdtree'

call plug#end()

" Themes
" colorscheme afterglow
colorscheme onehalfdark

" Folding
set foldmethod=indent
set foldlevel=80
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Ignore
set wildignore+=*/target/*
set wildignore+=*/node_modules/*

"" Split Navigation
set splitbelow
set splitright

"" Editor Config
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

"" Remaps
" nnoremap <Leader>t :BTags<CR>
" nnoremap <Leader>T :Tags<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-k> :bprevious<CR>
nnoremap <space> za
nnoremap <C-y> :Rg<CR>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" silent! noremap <C-p> :GFiles<CR>

map <C-w> :NERDTreeToggle<CR>

"" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onehalfdark'

"" GoLang
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
