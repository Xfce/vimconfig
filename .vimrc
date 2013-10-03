set langmenu=en_US.UTF-8
"set guifont=YaHei\ Consolas\ Hybrid\ 10.5
"set guifont=YaHei\ Consolas\ Hybrid\ for\ Powerline\ 10.5
set guifont=YaHei\ Consolas\ Hybrid\ for\ Powerline:h14
let mapleader=","
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set nocp "not competitable
filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=/usr/local/go/misc/vim/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'gitcommit' : 1,
      \}
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_conf.py'
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
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
Bundle 'bling/vim-airline'
"airline
if has("gui_running")
    let g:isGUI=1
else
    let g:isGUI=0
endif
if (g:isGUI)
  let g:airline_powerline_fonts = 1
  let $GOPATH = "/Users/pycq2002/Projects/go"
else
  let g:airline_symbols = {}
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.linenr = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.paste = ''
  let g:airline_symbols.whitespace = ''
endif
"let g:airline_powerline_fonts = 1
Bundle 'majutsushi/tagbar'
nnoremap <silent><F8> :TagbarToggle<CR>
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-surround'
"Bundle 'Yggdroot/indentLine'
"let g:indentLine_char = '┆'
"let g:indentLine_color_term = 236
"let g:indentLine_color_gui = '#3a3a3a'
Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height=5
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = ';'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'
"Bundle 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"let g:SuperTabRetainCompletionType=2
Bundle 'Blackrush/vim-gocode'
Bundle 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0
Bundle 'tomasr/molokai'
"Bundle 'vim-ruby/vim-ruby'
Bundle "pangloss/vim-javascript"
let g:javascript_conceal = 1
let javascript_enable_domhtmlcss = 1



filetype plugin indent on
syntax on
"Rainbow
"au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
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


"set rnu "show the relativenumber of lines
set nu
set ignorecase "ig case when searching
set hlsearch "highlight search
set incsearch "increasing search You know it!
set showmatch "show the brackets matches
set background=dark "I like it
colorscheme molokai
let g:rehash256 = 1
set t_Co=256 "make the colorscheme more beautiful
set history=50
set showcmd "show command
set backspace=indent,eol,start
set encoding=utf-8
"set shell=/usr/local/bin/zsh
set shell=/bin/sh
set tw=78 "auto new line
set autoread "reload the file when changed in some way set splitright
set ffs=unix,dos,mac
if version>=700
    set showtabline=0
endif
set lazyredraw
set ttyfast
set ttyscroll=3


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
"func! formatSourceCode()
    "if FileType=='go'
        "exec ":Fmt"
    "endif
"endfunc
autocmd BufWritePost *.go exec ":Fmt"
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
"nnoremap <silent><C-j> :bn<CR>
"nnoremap <silent><C-k> :bp<CR>
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


nnoremap <leader>rw :RainbowParenthesesToggle <CR>
inoremap <leader>rw :RainbowParenthesesToggle <CR>
vnoremap <leader>rw :RainbowParenthesesToggle <CR>

augroup filetype
    au! BufNewFile,BufRead SCons* set filetype=scons
    au! BufRead,BufNewFile *.ll     set filetype=llvm
    au! BufRead,BufNewFile *.td     set filetype=tablegen
    au! BufRead,BufNewFile *Makefile*     set filetype=make
augroup END
"makefile will use tab
autocmd FileType makefile setlocal noexpandtab
