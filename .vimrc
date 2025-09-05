" Arians default vim configurations

" compatibility configurations {{{
if &compatible
  set nocompatible
endif

if has('win32') || has ('win64')
  let $VIMHOME = $VIM."/vimfiles"

  let g:python3_host_prog = 'C:/ProgramData/Miniconda3/python.exe'
  set pythonthreedll=C:/ProgramData/Miniconda3/python39.dll	
  set pythonthreehome=C:/ProgramData/Miniconda3
else
  let $VIMHOME = $HOME."/.vim"
endif
" }}}

let $MYVIMRC="~/.vimrc"
let $MYVIMDIR="~/.vim"
set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after


" Vim Package {
silent! if plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  " Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-repeat'

  Plug 'tpope/vim-markdown'
  let g:markdown_syntax_conceal = 0

  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-vinegar'


  Plug 'AndrewRadev/splitjoin.vim'
  let g:splitjoin_split_mapping = ''
  let g:splitjoin_join_mapping = ''
  nnoremap gss :SplitjoinSplit<cr>
  nnoremap gsj :SplitjoinJoin<cr>

  Plug 'AndrewRadev/linediff.vim'
  Plug 'mbbill/undotree'
  if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
  endif

  " tagbar
  Plug 'preservim/tagbar', { 'on': 'TagbarToggle' }
  let g:tagbar_sort=0
  let g:tagbar_ctags_bin='/opt/local/bin/uctags'

  Plug 'ludovicchabant/vim-gutentags'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() },
  \   'for': ['markdown', 'vim-plug']}

  " colors
  Plug 'morhetz/gruvbox'
  Plug 'lifepillar/vim-gruvbox8'

  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/gv.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/vim-easy-align'

  Plug 'SirVer/ultisnips'
  let g:UltiSnipsExpandTrigger = '<Nop>'
  let g:UltiSnipsJumpForwardTrigger = '<Nop>'
  let g:UltiSnipsJumpBackwardTrigger = '<Nop>'
  let g:UltiSnipsEditSplit = 'vertical'

  Plug 'honza/vim-snippets'

  Plug 'airblade/vim-gitgutter'

  Plug 'preservim/nerdtree'
  let NERDTreeShowHidden=1
  " let NERDTreeIgnore=['\.DS_Store$', '\.git$']
  let NERDTreeIgnore=['\.DS_Store$']
  augroup nerd_loader
    autocmd!
    autocmd VimEnter * silent! autocmd! FileExplorer
    autocmd BufEnter,BufNew *
          \  if isdirectory(expand('<amatch>'))
          \|   call plug#load('nerdtree')
          \|   execute 'autocmd! nerd_loader'
          \| endif
  augroup END

  Plug 'justinmk/vim-gtfo'

  " rust lang
  Plug 'rust-lang/rust.vim'

  " go lang
  Plug 'fatih/vim-go'

  " fancy stuff
  Plug 'chrisbra/Colorizer'

  " Syntax highlighting for CJSON
  Plug 'neoclide/jsonc.vim'

  " zig
  Plug 'ziglang/zig.vim'

  " kcl-extension
  Plug 'kcl-lang/kcl.nvim'


  call plug#end()
endif
" }}}
"
"
"


" Clipboard Settings {{{
if $OS == 'Darwin'
  set clipboard=unnamed
elseif $OS == 'Windows_NT'
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
" }}}

" Basic settings {{{
filetype plugin indent on
set encoding=utf-8
set number
set norelativenumber
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif
set backspace=indent,eol,start
set list

" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set fileformats=unix,dos

" Faster ASCII-based grep
set grepprg=LC_ALL-C\ rg\ -rns

set hlsearch
set incsearch

" Prefer hiding over unloading buffers
set hidden

set ignorecase
set smartcase
set lazyredraw
set ttyfast
set title
set nobackup
set nowritebackup
set noswapfile
if has('persistent_undo')
  set undodir=/tmp,.
  set undofile
endif
set cmdheight=2

if has ('folding')
  setglobal foldmethod=marker
  setglobal foldopen+=jump
endif

" setglobal commentstring=#\ %s
" if !get(v:, 'vim_did_enter', !has('vim_starting'))
"   setlocal commentstring<
" endif

set splitbelow
set splitright
set nojoinspaces
set nostartofline
set nocursorline

set mouse=a

set modelines=2
set formatoptions+=rno1l
set synmaxcol=240
set linebreak
set nowrap

" Search relative to current file + directory
set path+=**

" ID Tags relative to current file + directory
set tags=./tags;,tags;

" Indentation defaults (<< / >> / == / auto)
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Prefer spaces over tabs
set expandtab

set smarttab

set timeoutlen=500
set ttimeoutlen=50

set wildmenu
set wildmode=longest,list,full
set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,/tmp/*,*/venv/*
set wildignore+=*/node_modules/*
set wildignore+=*cache*
set wildignore+=*__pycache__*

set showtabline=2
set laststatus=2

set display+=lastline

set showcmd
set updatetime=300

set shortmess+=aIT
set complete-=i

" " " its behave hiding number if sign appears
" if has("patch-8.1.1564")
" " Recently vim can merge signcolumn and number column into one
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif

set signcolumn=yes

if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

if exists('&fixeol')
  set nofixeol
endif
" }}}


" Colorscheme {{{
syntax enable
if has('gui_running')
  set t_Co=256
  set background=dark
  try
    if has('mac')
      set guifont=Monaco Nerd Font:h12
      " set guifont=MesloLGS Nerd Font:h12
      " set guifont=DejaVuSansM Nerd Font:h12
      " set guifont=Iosevka:h13
      " set guifont=TamzenForPowerline:h14
      " set guifont=IBM Plex Mono:h12
      " set guifont=Cousine:h11
      " set guifont=SourceCodePro-Regular:h12
      " set guifont=Consolas:h11
      " set guifont=OperatorMono-Book:h14
      " set guifont=Inconsolata:h14
      " set guifont=Monaco:h11
    elseif has('win32')
      set guifont=Monaco_Nerd_Font:h13:cANSI:qDRAFT
      " set guifont=MesloLGS_Nerd_Font:h13:cANSI:qDRAFT
      " set guifont=DejaVuSansM_Nerd_Font:h13:cANSI:qDRAFT
      " set guifont=Iosevka:h13:cANSI:qDRAFT
      " set guifont=TamzenForPowerline:h14:cANSI:qDRAFT
      " set guifont=IBM_Plex_Mono:h12:cANSI:qDRAFT
      " set guifont=Monego_Nerd_Font_Fix:h11:cANSI:qDRAFT
      " set guifont=Cousine:h10:cANSI:qDRAFT
      " set guifont=Source_Code_Pro:h12:cANSI:qDRAFT
      " set guifont=Consolas:h11:cANSI:qDRAFT
      " set guifont=Operator_Mono:h14:cANSI:qDRAFT
      " set guifont=Inconsolata:h14:cANSI:qDRAFT
      " set guifont=Monaco:h11:cANSI:qDRAFT
      " set guifont=Cousine:h10:cANSI:qDRAFT
      " set guifont=Roboto_Mono:h10:cANSI:qDRAFT
    else
      set guifont=Monaco\ Nerd\ Font\ 12
      " set guifont=MesloLGS\ Nerd\ Font\ 12
      " set guifont=DejaVuSansM\ Nerd\ Font\ 12
      " set guifont=Iosevka\ 13
      " set guifont=TamzenForPowerline\ 14
      " set guifont=IBM\ Plex\ Mono\ 12
      " set guifont=Monego\ Nerd\ Font\ Fix 13
      " set guifont=Cousine\ 11
      " set guifont=Source\ Code\ Pro\ 10
      " set guifont=Consolas\ 11
      " set guifont=Operator\ Mono\ 14
      " set guifont=Inconsolata\ 14
      " set guifont=Monaco\ 11
      " set guifont=Cousine\ 12
      " set guifont=Roboto\ Mono\ 10
    endif
    " let g:gruvbox_contrast_dark="soft"
    " colorscheme gruvbox
    colorscheme gruvbox8_soft
  catch
    redraw!
  endtry
else
  set background=dark
  try
    " let g:gruvbox_contrast_dark="soft"
    " colorscheme gruvbox
    colorscheme gruvbox8_soft
  catch
    redraw!
  endtry
endif
" }}}


" Keyboard Mappings {{{
let mapleader = "\<Space>"
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :update<CR>

" " using NetRW default
" nnoremap ,n :Lex<CR>

" Using nerdtree
nnoremap ,n :NERDTreeToggle<CR>

nnoremap ,u :UndotreeToggle<CR>

nnoremap <Leader>d :bd!<CR>
nnoremap <silent> <Leader><Leader> :Files<CR>

inoremap jk <Esc>

" indent mapping (moving lines)
xnoremap < <gv
xnoremap > >gv

" Fast global commands
nnoremap ,g :g//#<Left><Left>
" Faster project-based editing
nnoremap ,e :e **/*<C-z><S-Tab>

" Make the directory for which the current file should be in
nnoremap ,m :!mkdir -p %:h<CR>

" Bindings for more efficient path-based file navigation
nnoremap ,f :find *
nnoremap ,v :vert sfind *
nnoremap ,F :find <C-R>=fnameescape(expand('%:p:h')).'/**/*'<CR>
nnoremap ,V :vert sfind <C-R>=fnameescape(expand('%:p:h')).'/**/*'<CR>

" line field separation
nnoremap <Leader>0 m`^o
  \====================================
  \====================================
  \<Esc>``j

" Markdown headings
nnoremap <Leader>1 m`yypVr=``
nnoremap <Leader>2 m`yypVr-``
nnoremap <Leader>3 m`^i### <Esc>``4l
nnoremap <Leader>4 m`^i#### <Esc>``5l
nnoremap <Leader>5 m`^i##### <Esc>``6l

" Argslist navigation
nnoremap [a :previous<CR>
nnoremap ]a :next<CR>
nnoremap [A :first<CR>
nnoremap ]A :last<CR>
nnoremap ,a :args *

" Buffers navigation
nnoremap ]b :bnext<CR>
nnoremap [b :bprev<CR>
nnoremap <Leader>s :SC<CR>
" without fzf
nnoremap <Leader>b :buffer *
" " with fzf
" nnoremap <Leader>b :Buffers<CR>

" quickfix windows
nnoremap ,c :copen<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>

" add newline before and after cursor lines
nnoremap [<Space> ko<ESC>j<ESC>
nnoremap ]<Space> o<ESC>k

" Tabs navigation
nnoremap ]t :tabn<CR>
nnoremap [t :tabp<CR>
" nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>t :TagbarToggle<CR>

" read file at current cursor position
nnoremap <Leader>r :read <cfile><CR>

" shebang abbrev
inoreabbrev <expr> #!! "#!/usr/bin/env" . (empty(&filetype) ? '' : ' '.&filetype)

" Useful for accessing commonly-used files
nnoremap <Leader>v :e $MYVIMRC<CR>

" Window management
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 6/5)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 5/6)<CR>

" Access file name data
cnoremap \fp <C-R>=expand("%:p:h")<CR>
inoremap \fp <C-R>=expand("%:p:h")<CR>
cnoremap \fn <C-R>=expand("%:t")<CR>
inoremap \fn <C-R>=expand("%:t")<CR>
cnoremap \ft <C-R>=strftime("%c")<CR>
inoremap \ft <C-R>=strftime("%c")<CR>

" write as super user
cnoremap w!! w !sudo tee % >/dev/null

" goyo toggle
nnoremap <Leader>g :Goyo 80<CR>

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" search in root project directory
nnoremap \r :Rg<CR>

" auto pair / auto close mapping
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" }}}


" Autocommands {{{
augroup vimrc
  autocmd!
  autocmd VimEnter * hi Normal ctermbg=none
  au BufWritePost vimrc,.vimrc nested if expand('%') !~ 'fugitive' | source % | endif
  " Disables automatic commenting on newline:
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END
" }}}


" Plugin settings {{{
" netrw
let g:netrw_browse_split = 4
let g:netrw_liststyle=3 " set default netrw default style to tree style
" }}}


" Commands {{{
" CDC = Change to Directory of Current file
command! CDC cd %:p:h

command! EX if !empty(expand('%'))
      \|   write
      \|   call system('chmod +x '.expand('%'))
      \|   silent e
      \| else
        \|   echohl WarningMsg
        \|   echo 'Save the file first'
        \|   echohl None
        \| endif

" Scratch Buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
" }}}


" Functions {{{
" for timestamp
" replace text if contains metime
function! UpdateTime()
  let filename = expand('%:e')
  " echo filename
  if filename == 'md'
    execute "%s/" . "updated_at.*$/" . "updated_at: " . strftime('%c') . '/g'
  endif
endfunction

" open file
function! s:open(...) abort
  if has('win32')
    let cmd = 'start'
  elseif executable('xdg-open')
    let cmd = 'xdg-open'
  else
    let cmd = 'open'
  endif
  if !empty(v:servername) && !has('win32')
    let cmd = 'env VISUAL="vim --servername '.v:servername.'" '.cmd
  endif
  let args = a:0 ? copy(a:000) : [get(b:, 'url', '%:p')]
  if type(args[0]) == type(function('tr'))
    let args[0] = call(args[0], [{}], {})
  endif
  call map(args, 'shellescape(expand(v:val))')
  return 'echo ' . string(system(cmd . ' ' . join(args, ' '))[0:-2])
endfunction
command! -nargs=* -complete=file O :exe s:open(<f-args>)

" }}}


" Status line {{{
function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %F %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction
let &statusline = s:statusline_expr()
" }}}
