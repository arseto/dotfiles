call plug#begin('~/.config/site/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'shawncplus/phpcomplete.vim'
  Plug 'StanAngeloff/php.vim'
  Plug 'ervandew/supertab'
  Plug 'scrooloose/syntastic'
  Plug 'edkolev/tmuxline.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'altercation/vim-colors-solarized'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
call plug#end()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
augroup END

" CTRL P
" set runtimepath^=~/.vim/bundle/ctrlp.vim

" airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
  let g:airline_symbols.space = "\ua0"

" Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

syntax enable
set nu

" set term=screen-256color
" let g:solarized_termcolors=256
" set t_Co=256
set background=dark
colorscheme solarized

if has('gui_running')
  set guifont=Inconsolata\ Medium\ 12
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
endif

" Syntastic php
let g:syntastic_phpcs_disable = 1
let g:syntastic_phpmd_disable = 1
let g:syntastic_php_checkers = ['php']

" File browser with NERDTree
nnoremap <C-g> :NERDTreeToggle<CR>

" Set leader key
let mapleader = "-"

" Supertab configuration
let g:SuperTabDefaultCompletionType = ""