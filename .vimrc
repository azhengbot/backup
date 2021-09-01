" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'


Plug 'mileszs/ack.vim'

" Initialize plugin system
call plug#end()


set guifont=Monaco:h16
set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set cursorline
"setlocal textwidth=80
set tags=tags
autocmd BufRead,BufNewFile *.py set et ts=4 sw=4 sts=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set nu
if has('gui_running')
    set background=dark
else
    set background=dark
endif

" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
endif

set splitright
"turn off vim compatible check
set nocompatible
"check file type
set completeopt=longest,menu
"histroy line count
set history=1000
set showmatch
"left-down status line
set ruler
"auto match targets
set incsearch
"high light search
set hlsearch
"fold code by syntax 'cmd':
"'zi' open/close all folds
"'za' open/close current fold
"'zM' close all folds
"'zR' open all folds
set foldmethod=indent
"set foldmethod=marker
"set foldmethod=indent
set foldcolumn=0
set foldopen=all
"set foldclose=all
"colorscheme evening
"set cinoptions+={2,0,p0,t0
set formatoptions=tcqr
set nu
set backspace=2

