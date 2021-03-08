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
Plugin 'yianwillis/vimcdoc'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'


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
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let NERDTreeSortOrder=['\.cpp$', '\.c$', '\.h$']
let NERDTreeIgnore=['\.lnk$', '\~$' , '\.vim$']
