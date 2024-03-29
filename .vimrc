"""""""""""""""""""""""""""""""""""""""""""""""
""""""""""Vim Configuration by Zarth"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""
" keymap：
"""""""""""""""""""""""""""""""""""""""""""""""
" map <ESC> to kj in insert mode
" map <Leader> to comma
" 
" C-n next Buffer
" C-p last Buffer
" C-e open file tree
"
" <Leader>cc add comment
" <Leader>cu cancel comment




"""""""""""""""""""""""""""""""""""""""""""""""
" Normal Configure

"""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','
inoremap kj <ESC>

syntax on
set nu

set mouse=a
set ruler
set hlsearch 
set incsearch
set wrap
set backspace=2 

set shiftwidth=4
set tabstop=4
set cindent
set smarttab
set autoindent

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set expandtab
set pastetoggle=<F12>

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    autocmd InsertEnter,InsertLeave * set cul!
endif
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"""""""""""""""""""""""""""""""""""""""""""""""
" Configure of Vundle:

"""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""
" My own Plugins:

"""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'yianwillis/vimcdoc'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'luochen1990/rainbow'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""
"Configure of airline:

"""""""""""""""""""""""""""""""""""""""""""""""

" open tabline to switch buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" set keymap for switching keymaps
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>


"""""""""""""""""""""""""""""""""""""""""""""""
" Configure of Nerdcommenter:

"""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


""""""""""""""""""""""""""""""""""""""""""""""""
"Configure of Nerdtree:

"""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let NERDTreeSortOrder=['\.py', '\.cpp$', '\.c$', '\.h$', '\.json', '\.csv', '\.txt', '\.md']
let NERDTreeIgnore=['\.lnk$', '\~$' , '\.vim$']


""""""""""""""""""""""""""""""""""""""""""""""""
"Configure of rainbow:

"""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'magenta'],
\	'ctermfgs': ['blue', 'red', 'green', 'magenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

