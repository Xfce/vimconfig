colorscheme molokai
set langmenu=en_US.UTF-8 
set guifont=YaHei\ Consolas\ Hybrid\ 10.5
let mapleader=","
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set nocp "not competitable
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Rip-Rip/clang_complete'
let g:clang_periodic_quickfix=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_auto_select=1
inoremap <expr> <up> pumvisible() ? "\<C-p>":""
inoremap <expr> <down> pumvisible() ? "\<C-n>":""
inoremap <expr> <CR> pumvisible() ? "\<C-y>":"\<CR>"
Bundle 'scrooloose/nerdtree'
"configuration of NERDTree
let NERDShutUp=1
"configuration of NERDTree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile='/home/pycq2002/.vim/bundle/nerdtree/Bookmarks'
let NERDTreeMouseMode=2
let NERDTreeDirArrows=0
let NERDTreeAutoDeleteBuffer=1
"""let NERDTreeShowBookmarks=1
let NERDTreeWinPos='left'
nnoremap <silent><leader>fe :NERDTreeToggle<CR>
"mapleader to toggle NERDTree
Bundle 'SirVer/ultisnips'
Bundle 'Lokaltog/vim-powerline'
"powerline
if has("gui_running")
    let g:isGUI=1
else
    let g:isGUI=0
endif
if (g:isGUI)
    let g:Powerline_symbols='fancy'
else
    let g:Powerline_symbols='unicode'
endif
Bundle 'majutsushi/tagbar'
nnoremap <silent><F8> :TagbarToggle<CR>
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'nathanaelkane/vim-indent-guides'
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=orange   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=cyan ctermbg=4
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
Bundle 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height=5
"Bundle 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"let g:SuperTabRetainCompletionType=2



filetype plugin indent on
syntax on 
"colorscheme candycode
"""set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set foldmethod=syntax
"set foldlevel=0
"set foldnestmax=1
set laststatus=2 "the status line
"%F filename
"%m whether the file is changed
"%r whether the file is readonly
"%Y filetype
"%{&fileformat} 
"%b the ASCII of current char in oct
"%B the ASCII of current char in hex
"%l current line number
"%c current column number
"%p persent of file
"%% persent sign
"%L total lines
"set statusline=%<%.40f%m%r,\ %Y,\ %{&fileformat}\ [%l-%c,\ %p%%,\ TOTAL\ %L\]\ %=%{strftime(\"%H:%M\ %Y-%m-%d\")}
"set statusline=%<%.40F%m%r,\ %Y,\ %{&fileformat}\ [%l-%c,\ %p%%,\ TOTAL\ %L\]\ %=%{strftime(\"%H:%M\ %Y-%m-%d\")}
"set statusline=%<%F%m%r,%Y,%{&fileformat}\ [%l-%c,\ %p%%,\ TOTAL\ %L\]
"set statusline=%<%F%m%r,%Y,%{&fileformat}\ CWD:%<%{CurDir()}\ [%l-%c,\ %p%%,\ TOTAL\ %L\]
"function! CurDir()
  "let cutdir=substitute(getcwd(),'/home/pycq2002',"~","g")
  "return cutdir
"endfunc
set hid "You can change file in same buf without saving
set autoindent
set cindent
set smartindent
set imcmdline
set expandtab "use spaces instead of tab
set smarttab
set softtabstop=4
set shiftwidth=4 
set tabstop=4

set rnu "show the relativenumber of lines
au FocusLost * :call SetNu()
au FocusGained * :call SetRnu()
au InsertEnter * :call SetNu()
au InsertLeave * :call SetRnu()
function! SetNu()
    if (&relativenumber==1 || &number==1)
        set number
    endif
endfunc
function! SetRnu()
    if (&relativenumber==1 || &number==1)
        set relativenumber
    endif
endfunc
"set nu
set ignorecase "ig case when searching
set hlsearch "highlight search
set incsearch "increasing search You know it!
set showmatch "show the brackets matches
set background=dark "I like it
set t_Co=256 "make the colorscheme more beautiful
set history=50
set showcmd "show command
set backspace=indent,eol,start
set encoding=utf-8
set shell=/bin/sh 
set tw=78 "auto new line
set autoread "reload the file when changed in some way set splitright
set ffs=unix,dos,mac
if version>=700
    set showtabline=0
endif
set lazyredraw


set wildmenu "wild menu~~~"
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32") || has("win64")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif
set wildmode=longest:full,full

set nobackup
set nowritebackup
set noswapfile

set mouse=a "use mouse"
autocmd FileType * setlocal completeopt=longest,menuone
autocmd FileType cpp setlocal completeopt=menu
autocmd BufEnter * cd %:p:h "change dictionary when enter new buffer
"close the priview buf when select one
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
func! Do_Make()
  set makeprg=make
  exec "make"
  exec "cw 10"
endfunc
"just save
nnoremap <silent><F2> :w<CR>
inoremap <silent><F2> <ESC>:w<CR>
vnoremap <silent><F2> <ESC>:w<CR>
"keymap for za
nnoremap <silent><SPACE> za
"build file with the Makefile
nnoremap <silent><F5> :call Do_Make()<CR>
inoremap <silent><F5> <ESC>:call Do_Make()<CR>
vnoremap <silent><F5> <ESC>:call Do_Make()<CR>
"use C-F11 C-F12 to change corrent bug
nnoremap <silent><C-F11> :cp<CR>
inoremap <silent><C-F11> <ESC>:cp<CR>
vnoremap <silent><C-F11> <ESC>:cp<CR>
nnoremap <silent><C-F12> :cn<CR>
inoremap <silent><C-F12> <ESC>:cn<CR>
vnoremap <silent><C-F12> <ESC>:cn<CR>
"use C-j C-k to change the buf
nnoremap <silent><M-j> :bn<CR>
inoremap <silent><M-j> <ESC>:bn<CR>
vnoremap <silent><M-j> <ESC>:bn<CR>
nnoremap <silent><M-k> :bp<CR>
inoremap <silent><M-k> <ESC>:bp<CR>
vnoremap <silent><M-k> <ESC>:bp<CR>
"highlight corrent line
set cursorline
inoremap <silent>jk <esc>
inoremap <esc> <nop>
inoremap <C-c> <nop>
inoremap <C-[> <nop>
"disable the arrow keys
nnoremap <up> <nop>
inoremap <up> <nop>
vnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
nnoremap <left> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <S-F8> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>

augroup filetype
    au! BufNewFile,BufRead SCons* set filetype=scons
    au! BufRead,BufNewFile *.ll     set filetype=llvm
    au! BufRead,BufNewFile *.td     set filetype=tablegen
    au! BufRead,BufNewFile *Makefile*     set filetype=make
augroup END
"makefile will use tab
autocmd FileType makefile setlocal noexpandtab


"use x-terminal to see man page
command -nargs=0 -range ManInGnomeTerm !x-terminal-emulator -e '/home/pycq2002/.vim/man.sh <cword>'
nnoremap <silent> K :ManInGnomeTerm<CR><CR>
