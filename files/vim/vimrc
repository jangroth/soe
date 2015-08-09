" vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-scala'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set background=dark
colorscheme distinguished

set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent
set ignorecase
set smartcase
set nowrap
set paste
filetype plugin indent on

" Number of lines to use for the command line
set cmdheight=1 

" Shows a line indicating mode (ie, the -- INSERT -- at the bottom )
set showmode

" Show file position
set ruler

" Show incomplete commands in status bar. 
set showcmd

" Show cursor line by default - makes it easier to pair
set cursorline

" Always show a status line
set laststatus=2

" Configure the status line
set statusline=%F%m%a%r%=\ %y\ \ \-\ %3.3v,%5.5l/%5.5L\ %%%3.3p

" line numbers on
set number

" next/previous search results always centered
nmap n nzz
nmap s-n s-nzz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" incremental search
set incsearch
set hlsearch

let mapleader="\\"
map <Leader>h :set hls!<CR>
map <Leader>i :set ignorecase!<CR>
map <Leader>l :set number!<CR>
map <Leader>p :set paste!<CR>
map <Leader>c :set cursorline!<CR>

" one space after a period not two
set nojoinspaces

" Store swap files in fixed location, not current directory.
set dir=~/.vim/.vimswap//

set lazyredraw

" we hate literal tabs tabs
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\ /

" highlight extra spaces ftw
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * redraw!
map __ :set hls!<CR>
map _ic :set ignorecase!<CR>

" open help in vertical split
autocmd FileType help wincmd L

syntax on
