call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'bling/vim-airline'
  Plug 'vim-syntastic/syntastic'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'sjl/gundo.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'ParamagicDev/vim-medic_chalk'

  " syntax highlighting
  Plug 'pangloss/vim-javascript'

  " colorschemes
  Plug 'nanotech/jellybeans.vim'
  Plug 'mhartington/oceanic-next'

  " to try later
  " Plug 'ervandew/supertab'
  " Plug 'Yggdroot/indentLine'
call plug#end()

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on

" Enable indentation  plugins
filetype indent on

" Read for changes to files?
set autoread

" Good old comma leader key
let mapleader = ","
let g:mapleader = ","

" Display line numbers
set ruler
set nu

" Relative line numbers
set relativenumber

" Show hidden characters
set listchars=tab:—→,trail:·,extends:>,precedes:<
set list

" Display line at 80 characters
set colorcolumn=80

" Set 5 lines to the cursor when reaching the edges of the documents/screen
set so=5

" Move Splitpanes around
nmap <tab>l <C-w>L<cr>
nmap <tab>h <C-w>H<cr>
nmap <tab>k <C-w>K<cr>
nmap <tab>j <C-w>J<cr>
nmap <C-tab> <C-w>w<cr>

" Takes split pane into new tab
nmap <tab>t <C-W>T<cr>

" Avoid syntax to slow your vim down with long lines
set synmaxcol=256

" Set shortcut for NERD Tree
map <leader>n :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

" Open .vimrc file
nmap <leader>v :tabe ~/.vimrc<cr>

" Don't hide doublequotes in JSON files
map <leader>cl :set conceallevel=0<cr>

" Updates/Source this file
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo '[.vimrc reloaded]'"<CR>

" Colors
" let base16colorspace=256
"
if (has("termguicolors"))
  set termguicolors
endif

colorscheme OceanicNext

" Using CtrlP
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|dist|public'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Powerline Fonts for Airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme='onedark'

" Pull up Gundo Interface
nmap <leader>g :GundoToggle<cr>

" Disable Folding for Markdown files
let g:vim_markdown_folding_disabled=1

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" vim menu
set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc,*/tmp/*,*.zip

" Shows incomplete command in status bar
set showcmd

" no error bells
set noeb vb t_vb=

" Don't allow selection of text using mouse
set mouse=a

" Stop middle click from pasting
:map <MiddleMouse> <Nop>
:map! <MiddleMouse> <Nop>

" Set conceallevel to none (don't hide quotes in json files)
set conceallevel=0

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" timeout?
set tm=500

" Enable syntax highlighting
syntax enable

" COLORS!
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Don't wrap lines
set nowrap

" Tabstop/Shiftwidth
set expandtab
set ts=2
set sw=2
set tw=80
set fo=croql

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Paste the last thing in register
map <leader>p "0p<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
" set laststatus=2

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" COMMANDS

command W w

