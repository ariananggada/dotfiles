" VIMRC

let g:coc_disable_startup_warning = 1

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

" Variable Assignments {{{
let $MYVIMRC="~/.vimrc"
let $MYVIMDIR="~/.vim"
" }}}

set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after

" vim-plug plugin manager {{{
silent! if plug#begin('~/.vim/plugged')

  Plug 'k-takata/minpac', {'type': 'opt'}
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'

  Plug 'tpope/vim-markdown'
  let g:markdown_syntax_conceal = 0

  Plug 'tpope/vim-repeat'

  Plug 'AndrewRadev/splitjoin.vim'
  let g:splitjoin_split_mapping = ''
  let g:splitjoin_join_mapping = ''
  nnoremap gss :SplitjoinSplit<cr>
  nnoremap gsj :SplitjoinJoin<cr>

  Plug 'AndrewRadev/linediff.vim'
  Plug 'mbbill/undotree'

  Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
    autocmd! User indentLine doautocmd indentLine Syntax
    let g:indentLine_color_term = 239
    let g:indentLine_color_gui = '#616161'

  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/gv.vim'

  " tags
  Plug 'preservim/tagbar', { 'on': 'TagbarToggle' }
  let g:tagbar_sort=0

  " colors
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'

  Plug 'reedes/vim-colors-pencil'
  function! PencilLight()
    if g:colors_name == 'pencil'
      colorscheme default
      set background=dark
      colorscheme gruvbox
      silent! execute 'Goyo!'
      set nowrap
    else
      colorscheme default
      set background=light
      colorscheme pencil
      silent! execute 'Goyo 80'
      set wrap
    endif
  endfunction
  command! -nargs=0 PencilLight silent! :call PencilLight() | redraw!
  command! -nargs=0 PL silent! :call PencilLight() | redraw!

  function! PencilDark()
    if g:colors_name == 'pencil'
      colorscheme default
      set background=dark
      colorscheme gruvbox
      silent! execute 'Goyo!'
      set nowrap
    else
      colorscheme default
      set background=light
      colorscheme pencil
      execute 'Goyo 80'
      set wrap
    endif
  endfunction
  command! -nargs=0 PencilDark silent! :call PencilDark() | redraw!
  command! -nargs=0 PD silent! :call PencilDark() | redraw!

  Plug 'dense-analysis/ale'

  Plug 'lervag/vimtex'
  let g:tex_flavor = 'latex'

  Plug 'SirVer/ultisnips'
  let g:UltiSnipsExpandTrigger = '<Nop>'
  let g:UltiSnipsJumpForwardTrigger = '<Nop>'
  let g:UltiSnipsJumpBackwardTrigger = '<Nop>'
  let g:UltiSnipsEditSplit = 'vertical'

  Plug 'honza/vim-snippets'

  Plug 'junegunn/goyo.vim'
  Plug 'godlygeek/tabular'
  " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() },
  "       \ 'for': ['markdown', 'vim-plug']}

  let g:mkdp_browser = 'surf'

  Plug 'airblade/vim-gitgutter'

  " comment this, using lf or vifm
  Plug 'preservim/nerdtree'
  let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.DS_Store$', '\.git$']
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

  if v:version >= 800
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
  endif

  Plug 'alvan/vim-closetag'
    let g:closetag_filenames = '*.js'

  " csv
  Plug 'chrisbra/csv.vim'

  " rust lang
  Plug 'rust-lang/rust.vim'

  " go lang
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " js and typescript
  Plug 'pangloss/vim-javascript'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  " react js or ts snippets
  Plug 'mlaursen/vim-react-snippets'

  " styled components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " graphql
  Plug 'jparise/vim-graphql'

  " fancy stuff
  Plug 'chrisbra/Colorizer'

  " emmet stuff
  Plug 'mattn/emmet-vim'

  " Calendar
  Plug 'mattn/calendar-vim'

  " for presentation
  Plug 'sotte/presenting.vim'
  au FileType markdown let b:presenting_slide_separator = '#'

  " " joplin integration
  " Plug 'tenfyzhong/joplin.vim'

  " " rainbow bracket / parantheses
  " Plug 'luochen1990/rainbow'
  " let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

  " vimsence (discord)
  Plug 'vimsence/vimsence'
  let g:vimsence_client_id = '439476230543245312'
  let g:vimsence_small_text = 'Vim'
  let g:vimsence_small_image = 'Vim'
  let g:vimsence_editing_details = 'Editing: {}'
  let g:vimsence_editing_state = 'Working on: {}'
  let g:vimsence_file_explorer_text = 'In NERDTree'
  let g:vimsence_file_explorer_details = 'Looking for files'

  if has('nvim')
    Plug 'github/copilot.vim'
  endif

  Plug 'puremourning/vimspector'


  call plug#end()
endif
" }}}

" Basic {{{
filetype plugin indent on
" }}}

" Settings {{{
if $OS == 'Darwin'
  set clipboard=unnamed
elseif $OS == 'Windows_NT'
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" " for neovim
" set clipboard=unnamedplus
set pastetoggle=<F2>
set encoding=utf-8
set number
set textwidth=0
if exists('&colorcolumn')
  " set colorcolumn=72,80
  set colorcolumn=80
endif
set backspace=indent,eol,start
set list
" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set fileformats=unix,dos
" Faster ASCII-based grep
" set grepprg=LC_ALL=C\ grep\ -rns
set grepprg=LC_ALL=C\ rg\ -rns
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

if has('folding')
  setglobal foldmethod=marker
  setglobal foldopen+=jump
endif
setglobal commentstring=#\ %s
if !get(v:, 'vim_did_enter', !has('vim_starting'))
  setlocal commentstring<
endif

set splitbelow
set splitright

set nojoinspaces
set nostartofline
set nocursorline

" if !has('gui_running') && empty($DISPLAY) || !has('gui')
"   set mouse=
" else
"   set mouse=nvi
" endif

set mouse=a

set modelines=2
set formatoptions+=rno1l
set synmaxcol=200
set linebreak
set nowrap

" Macro-compatible command-line wildchar
set wildcharm=<C-z>
" Search relative to current file + directory
set path+=**
" No swapfiles period.
set noswapfile
" ID Tags relative to current file + directory
set tags=./tags;,tags;
set tabstop=2
" Indentation defaults (<< / >> / == / auto)
set shiftwidth=2
" Prefer spaces over tabs
set expandtab
set smarttab

set timeoutlen=500
set ttimeoutlen=50

set wildmenu
set wildmode=longest,list,full
set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,*/tmp/*,*/venv/*
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

" " its behave hiding number if sign appears
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
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

" colorscheme {{{
syntax enable
if has('gui_running')
  set t_Co=256
  set background=dark
  try
    if has('mac')
      set guifont=TamzenForPowerline:h14
      " set guifont=IBM Plex Mono:h12
      " set guifont=Cousine:h11
      " set guifont=SourceCodePro-Regular:h12
      " set guifont=Consolas:h11
      " set guifont=OperatorMono-Book:h14
      " set guifont=Inconsolata:h14
      " set guifont=Monaco:h11
    elseif has('win32')
      set guifont=TamzenForPowerline:h14:cANSI:qDRAFT
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
      set guifont=TamzenForPowerline\ 14
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
    let g:gruvbox_contrast_dark="soft"
    colorscheme gruvbox
  catch
    redraw!
  endtry
else
  set background=dark
  try
    let g:gruvbox_contrast_dark="soft"
    colorscheme gruvbox
  catch
    redraw!
  endtry
endif
" }}}

" Mappings {{{
" Set leader key
let mapleader = "\<Space>"
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :update<CR>
nnoremap <BS> :noh<CR>

try
  nnoremap ,n :NERDTreeToggle<CR>
catch
  echo 'nerdtree error'
  nnoremap ,n :Lex<CR>
endtry

try
  nnoremap ,u :UndotreeToggle<CR>
catch
  echo 'undotree error'
endtry

" disable goyo in PencilLight function because doesnt work on splitwindow
try
  nnoremap <Leader>g :PencilLight<CR>
catch
  echo 'PencilLight function error'
endtry

nnoremap <Leader>d :bd!<CR>
nnoremap Q <nop>
nnoremap <silent> <Leader><Leader> :Files<CR>


" Self-explanatory convenience mappings
noremap <C-k> <C-p>
noremap <C-p> <Up>$
inoremap jk <Esc>
cnoremap jk <Esc>

" indent mapping(moving lines)
xnoremap < <gv
xnoremap > >gv


" Visually select pasted or yanked text
nnoremap gV `[v`]
" " Toggle Paste mode
" nnoremap <Leader>p :set paste!<CR>
" Command-line like forward-search
cnoremap <C-k> <Up>
" Command-line like reverse-search
cnoremap <C-j> <Down>
" Often utilize vertical splits
cnoreabbrev v vert
" Quit out of ex-mode faster
cnoreabbrev vv visual
" Fast global commands
nnoremap ,g :g//#<Left><Left>
" Faster project-based editing
nnoremap ,e :e **/*<C-z><S-Tab>

" " Join yanked text on a yank (needed for terminal mode copies)
" vnoremap yy y<CR>:let @"=substitute(@", '\n', '', 'g')<CR>:call yank#Osc52Yank()<CR>

" " Capture ex-command output to default register
" nnoremap ,p :let @"=substitute(execute('pwd'), '\n', '', 'g')<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" " Reload snippet configuration files
" nnoremap <C-s> :call UltiSnips#RefreshSnippets()<CR>

" " Make the directory for which the current file should be in
" nnoremap ,m :!mkdir -p %:h<CR>

nnoremap ,m :MakeLink<CR>

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
" "without fzf
" nnoremap <Leader>b :buffer *

" "with fzf
nnoremap <Leader>b :Buffers<CR>



" quickfix windows
nnoremap ,c :copen<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>

" add newline before and after cursor lines
nnoremap [<Space> ko<ESC>j
nnoremap ]<Space> o<ESC>k


" Tabs navigation
nnoremap ]t :tabn<CR>
nnoremap [t :tabp<CR>
" nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>t :TagbarToggle<CR>

" read file at current cursor position
nnoremap <Leader>r :read <cfile><CR>

" " More manageable brace expansions
" inoremap (<CR> (<CR>)<Esc>O
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {; {<CR>};<Esc>O
" inoremap {, {<CR>},<Esc>O
" inoremap [<CR> [<CR>]<Esc>O
" inoremap ([[ ([[<CR>]])<Esc>O
" inoremap ([=[ ([=[<CR>]=])<Esc>O
" inoremap [; [<CR>];<Esc>O
" inoremap [, [<CR>],<Esc>O

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

" " Symbol-based navigation
" nnoremap ,t :tjump /
" nnoremap ,d :dlist /
" nnoremap ,i :ilist /

" write as super user
cnoremap w!! w !sudo tee % >/dev/null

" used for wikis
" dangerous, this map change gf original binding in vim
" if file not found, create file instead
nnoremap <Leader>ef :split %:h/<cfile><CR>

" macos specific function keys mapping
if has('mac') && ($TERM == 'xterm-256color' || $TERM == 'screen-256color')
  map <Esc>OP <F1>
  map <Esc>OQ <F2>
  map <Esc>OR <F3>
  map <Esc>OS <F4>
  map <Esc>[16~ <F5>
  map <Esc>[17~ <F6>
  map <Esc>[18~ <F7>
  map <Esc>[19~ <F8>
  map <Esc>[20~ <F9>
  map <Esc>[21~ <F10>
  map <Esc>[23~ <F11>
  map <Esc>[24~ <F12>
endif
" }}}

" {{{ COC.NVIM
try
  let g:coc_global_extensions = [
        \ 'coc-snippets',
        \ 'coc-pairs',
        \ 'coc-tsserver',
        \ 'coc-json',
        \ 'coc-html',
        \ 'coc-eslint',
        \ 'coc-css',
        \ 'coc-pyright',
        \ 'coc-rust-analyzer',
        \ 'coc-go',
        \ 'coc-vimtex',
        \ 'coc-prettier',
        \ 'coc-yaml',
        \ 'coc-svelte'
        \ ]

    command! -nargs=0 Prettier :CocCommand prettier.formatFile


  " Use tab for trigger completion with characters ahead and navigate.
  " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
  " other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ CheckBackspace() ? "\<Tab>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

  " Make <CR> to accept selected completion item or notify coc.nvim to format
  " <C-g>u breaks current undo, please make your own choice.
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  nnoremap <silent> K :call <SID>show_documentation()<CR>


  " Use `[g` and `]g` to navigate diagnostics
  " Use `:CocDiagnostics` to get all diagnostics of current buffer in
  " location list.
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

  " Formatting selected code.
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Applying codeAction to the selected region.
  " Example: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap keys for applying codeAction to the current buffer.
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Apply AutoFix to problem on the current line.
  nmap <leader>qf  <Plug>(coc-fix-current)

  " Map function and class text objects
  " NOTE: Requires 'textDocument.documentSymbol' support from the
  " language server.
  xmap if <Plug>(coc-funcobj-i)
  omap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap af <Plug>(coc-funcobj-a)
  xmap ic <Plug>(coc-classobj-i)
  omap ic <Plug>(coc-classobj-i)
  xmap ac <Plug>(coc-classobj-a)
  omap ac <Plug>(coc-classobj-a)

  " Use CTRL-S for selections ranges.
  " Requires 'textDocument/selectionRange' support of LS, ex:
  " coc-tsserver
  nmap <silent> <C-s> <Plug>(coc-range-select)
  xmap <silent> <C-s> <Plug>(coc-range-select)

  " Add `:Format` command to format current buffer.
  command! -nargs=0 Format :call CocAction('format')

  " Add `:Fold` command to fold current buffer.
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " Add `:OR` command for organize imports of the current buffer.
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  " Add (Neo)Vim's native statusline support.
  " NOTE: Please see `:h coc-status` for integrations with external
  " plugins that provide custom statusline: lightline.vim, vim-airline.
  " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  " Mappings for CoCList
  " Show all diagnostics.
  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions.
  nnoremap <silent><nowait> <space>x  :<C-u>CocList extensions<cr>
  " Show commands.
  nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document.
  nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
  " " Search workspace symbols.
  " nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list.
  nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
catch
  echo 'coc.nvim error'
endtry
" }}}

" {{{ ale settings
let g:ale_set_signs = 0

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_delay = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'

let g:ale_statusline_format = ['Errors: %d', 'Warnings: %d', '']

let g:ale_linters = {
      \ 'tex': [],
      \ 'python': ['pylint'],
      \}
" }}}

" {{{ Autocommands

" general autocommand
augroup vimrc
  autocmd!
  autocmd VimEnter * hi Normal ctermbg=none
  au BufWritePost vimrc,.vimrc nested if expand('%') !~ 'fugitive' | source % | endif
  " Disables automatic commenting on newline:
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Create file-marks for commonly edited file types
augroup FileMarks
  autocmd!
  autocmd BufLeave *.snippets normal! mS
  autocmd BufLeave *.md  normal! mM
  autocmd BufLeave *.js   normal! mJ
  autocmd BufLeave *.ts   normal! mT
  autocmd BufLeave *.vim  normal! mV
  autocmd BufLeave *.html normal! mH
  autocmd BufLeave *.bzl  normal! mB
augroup END



" disable this, because conflicts with coc comment
augroup VimCommentary
  autocmd!
  " autocmd FileType javascript,javascriptreact,typescript,typescriptreact setlocal commentstring={/*\ %s\ */}
  autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
augroup END



" augroup general_docs_settings
"   autocmd!
"   autocmd BufWritePost *.ms,*.md,*.tex call BuildDocs()
" augroup END

" }}}

" Neovim {{{
if has("nvim")
  " Terminal mode:
  tnoremap <Esc> <C-\><C-n>
  autocmd TermOpen * startinsert

  " Prefer h-j-k-l mode-agnostic means of switching windows
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
  inoremap <M-h> <Esc><c-w>h
  inoremap <M-j> <Esc><c-w>j
  inoremap <M-k> <Esc><c-w>k
  inoremap <M-l> <Esc><c-w>l
  vnoremap <M-h> <Esc><c-w>h
  vnoremap <M-j> <Esc><c-w>j
  vnoremap <M-k> <Esc><c-w>k
  vnoremap <M-l> <Esc><c-w>l
  nnoremap <M-h> <c-w>h
  nnoremap <M-j> <c-w>j
  nnoremap <M-k> <c-w>k
  nnoremap <M-l> <c-w>l

  " nr2char({expr}) returns string with value {expr}
  " Equivalent to <C-\><C-n>"[reg]pi: paste the contents of [reg]
  tnoremap <expr> <C-v> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif
" }}}

" Others plugin settings {{{
" netrw
let g:netrw_browse_split = 4
let g:netrw_liststyle=3 " set default netrw default style to tree style
" }}}

" " Sometimes UltiSnips does not auto reload snippets
" cnoreabbrev resnip call UltiSnips#RefreshSnippets() 
" }}}

" Functions {{{

" CDC = Change to Directory of Current file
command CDC cd %:p:h

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
nnoremap <leader>u :call HandleURL()<cr>

" NoteLink: create file link
function! MakeLink(file)
    "let filename = fnameescape(fnamemodify(a:file, ":t"))
    "why only the tail ?  I believe the whole filename must be linked unless everything is flat ...
    let filename = fnameescape(a:file)
    let filename_wo_timestamp = fnameescape(fnamemodify(a:file, ":t:s/^[0-9]*-//"))
     " Insert the markdown link to the file in the current buffer
    let mdlink = "[[".filename_wo_timestamp."]](".filename.")"
    put=mdlink
endfunction
" command! -nargs=0 MakeLink :call MakeLink(<f-args>}
command! -nargs=0 MakeLink :call fzf#run(fzf#wrap({
  \ 'sink': {file -> MakeLink(file)}
  \ }))


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

" chmod
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

" " minpac
" command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', " {'do': 'call minpac#status()'})
" command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
" command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

" Call compile
" Open the PDF from ~/tmp/
function! BuildDocs()
  let l:file_name_path = expand('%:p:r')
  let l:extension = expand('%:e')
  if l:extension ==? "ms"
    silent execute "!groff -ms % -T pdf > ". l:file_name_path. ".pdf"
  elseif l:extension ==? "tex"
    " silent execute "!pandoc -f latex -t latex % -o ". l:file_name_path. ".pdf"
    silent execute "!pdflatex %"
  elseif l:extension ==? "md"
    silent execute "!pandoc % -s -o ". l:file_name_path. ".pdf" . " --number-sections --toc --toc-depth=6 -V block-headings"
  else
    echo "only [.ms .tex .md] are supported now"
  endif
endfunction
command! BuildDocs :call BuildDocs() | redraw!
nnoremap ,b :BuildDocs<CR>

function! PreviewDocs()
  let l:file_name_path = expand('%:p:r')
  let l:extension = expand('%:e')
  let l:extension_check = len(expand('%:e'))
  if l:extension_check > 0
    " :call BuildDocs() | redraw!
    let l:uname = system("uname -s")

    if l:uname =~ "Linux"
      silent execute "!zathura ". l:file_name_path. ".pdf &"
      redraw!

    elseif l:uname =~ "Darwin"

      if l:extension ==? "tex"
        " try
        "   silent execute "!zathura ". l:file_name_path. ".pdf"."&" | redraw!
        " catch
        "   silent execute "!open -a Preview ". l:file_name_path. ".pdf"
        " endtry
        silent execute "!open -a Skim ". l:file_name_path. ".pdf"
        redraw!
      else
        " try
        "   silent execute "!zathura ~/tmp/op.pdf &" | redraw!
        " catch
        "   silent execute "!open -a Preview ". l:file_name_path. ".pdf"
        " endtry
        silent execute "!open -a Skim ". l:file_name_path. ".pdf"
        redraw!
      endif

    else
      " " echo "PreviewDocs: OS not detected"
      " this is for windows
      silent execute "!SumatraPDF.exe ". l:file_name_path. ".pdf"
      redraw!
    endif

  else
    echo "buffer empty"
    redraw!

  endif

endfunction
command! PreviewDocs :call PreviewDocs()
nnoremap ,p :PreviewDocs<CR>

function! BuildPPTX()
  let l:file_name_path = expand('%:p:r')
  let l:extension = expand('%:e')
  if l:extension ==? "md"
    silent execute "!pandoc % -s -o ". l:file_name_path. ".presentation.pptx"
  else
    echo "only [.md] are supported now"
  endif
endfunction
command! BuildPPTX :call BuildPPTX() | redraw!


function! BuildPresentation()
  let l:file_name_path = expand('%:p:r')
  let l:extension = expand('%:e')
  if l:extension ==? "md"
    silent execute "!pandoc -t beamer % -s -o ". l:file_name_path. ".presentation.pdf"
  else
    echo "only [.md] are supported now"
  endif
endfunction
command! BuildPresentation :call BuildPresentation() | redraw!

function! PreviewPresentation()
  let l:file_name_path = expand('%:p:r')
  let l:extension = expand('%:e')
  let l:extension_check = len(expand('%:e'))
  if l:extension_check > 0
    " :call BuildDocs() | redraw!
    let l:uname = system("uname -s")

    if l:uname =~ "Linux"
      silent execute "!zathura ". l:file_name_path. ".presentation.pdf &"

    elseif l:uname =~ "Darwin"

      if l:extension ==? "tex"
        try
          silent execute "!zathura ". l:file_name_path. ".pdf"."&" | redraw!
        catch
          silent execute "!open -a Preview ". l:file_name_path. ".pdf"
        endtry
        " silent execute "!open -a Skim ". l:file_name_path. ".presentation.pdf"
      else
        try
          silent execute "!zathura ~/tmp/op.pdf &" | redraw!
        catch
          silent execute "!open -a Preview ". l:file_name_path. ".presentation.pdf"
        endtry
        " silent execute "!open -a Skim ". l:file_name_path. ".presentation.pdf"
      endif

    else
      " " echo "PreviewDocs: OS not detected"
      " this is for windows
      silent execute "!SumatraPDF.exe -presentation -new-window ". l:file_name_path. ".presentation.pdf"
    endif

  else
    echo "buffer empty"
  endif

endfunction
command! PreviewDocs :call PreviewDocs()
nnoremap ,p :PreviewDocs<CR>

function! s:indent_len(str)
  return type(a:str) == 1 ? len(matchstr(a:str, '^\s*')) : 0
endfunction

" #gi / #gpi | go to next/previous indentation level
function! s:go_indent(times, dir)
  for _ in range(a:times)
    let l = line('.')
    let x = line('$')
    let i = s:indent_len(getline(l))
    let e = empty(getline(l))

    while l >= 1 && l <= x
      let line = getline(l + a:dir)
      let l += a:dir
      if s:indent_len(line) != i || empty(line) != e
        break
      endif
    endwhile
    let l = min([max([1, l]), x])
    execute 'normal! '. l .'G^'
  endfor
endfunction
nnoremap <silent> gi :<c-u>call <SID>go_indent(v:count1, 1)<cr>
nnoremap <silent> gpi :<c-u>call <SID>go_indent(v:count1, -1)<cr>

" :Root | Change directory to the root of the Git repository
function! s:root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  if v:shell_error
    echo 'Not in git repo'
  else
    execute 'lcd' root
    echo 'Changed directory to: '.root
  endif
endfunction
command! Root call s:root()

" {{{
" zettelkasten note setup
function! SNote(...)
  let path = strftime("%Y%m%d%H%M")."-".trim(join(a:000)).".md"
  execute ":sp " . fnameescape(path)
endfunction
command! -nargs=* SNote call SNote(<f-args>)

function! Note(...)
  let path = strftime("%Y%m%d%H%M")."-".trim(join(a:000)).".md"
  execute ":e " . fnameescape(path)
endfunction
command! -nargs=* Note call Note(<f-args>)

command! -nargs=1 Ngrep grep "<args>" -g "*.md" $NOTE_PATH

function! ZettelkastenSetup()
  " if expand("%:t") !~ '^[0-9]\+'
  "   return
  " endif

  inoremap <expr> <plug>(fzf-complete-path-custom) fzf#vim#complete#path("rg --files -t md \| sed 's/^/[[/g' \| sed 's/$/]]/'")
  imap <buffer> [[ <plug>(fzf-complete-path-custom)

  function! s:CompleteTagsReducer(lines)
    if len(a:lines) == 1
      return "#" . a:lines[0]
    else
      return split(a:lines[1], '\t ')[1]
    end
  endfunction

  inoremap <expr> <plug>(fzf-complete-tags) fzf#vim#complete(fzf#wrap({
        \ 'source': 'note-tag-raw',
        \ 'options': '--multi --ansi --nth 2 --print-query --exact --header "Enter without a selection creates new tag"',
        \ 'reducer': function('<sid>CompleteTagsReducer')
        \ }))
  imap <buffer> # <plug>(fzf-complete-tags)
endfunction

function! InsertSecondColumn(line)
  exe 'normal! o' .. split(a:line, '\t')[1]
endfunction

command! ZKR call fzf#run(fzf#wrap({
        \ 'source': 'ruby ~/.local/bin/zettelkasten "' .. bufname("%") .. '"',
        \ 'options': '--ansi --exact --nth 2',
        \ 'sink':    function("InsertSecondColumn")
      \}))

augroup zettelkasten
  autocmd!
  let notes_path_symlink = resolve($NOTE_PATH)
  if notes_path_symlink == $NOTE_PATH
    autocmd BufNewFile,BufRead $NOTE_PATH/** call ZettelkastenSetup()
  else
    " autocmd BufNewFile,BufRead notes_path_symlink.'/**' call ZettelkastenSetup()
    " autocmd BufNewFile,BufRead $HOME/Dropbox/notes/** call ZettelkastenSetup()
    execute 'autocmd BufNewFile,BufRead ' . notes_path_symlink . '/** ' . 'call ZettelkastenSetup()'
  endif
augroup END
" end of zettelkasten note setup
" }}}

" {{{
" goyo setup
" c/o https://github.com/junegunn/goyo.vim/wiki/Customization
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd User GoyoEnter silent! call <SID>goyo_enter() | redraw!
autocmd User GoyoLeave silent! call <SID>goyo_leave() | redraw!

" autocmd BufRead,BufNewFile *.md | PencilLight
" autocmd BufRead,BufNewFile *.txt | PencilLight
" autocmd BufRead,BufNewFile *.tex | PencilLight
" autocmd FileType gitcommit | PencilLight 

" end of goyo setup
" }}}


" " this features disabled due to heavy resources
" " {{{ 
" " dictionary for english and indonesian words
" autocmd FileType markdown setlocal complete+=k | 
"       \ setlocal dict+=$HOME/.local/share/words/en-words.txt | 
"       \ setlocal dict+=$HOME/.local/share/words/id-words.txt

" autocmd FileType text setlocal complete+=k | 
"       \ setlocal dict+=$HOME/.local/share/words/en-words.txt | 
"       \ setlocal dict+=$HOME/.local/share/words/id-words.txt

" autocmd FileType tex,plaintex setlocal complete+=k | 
"       \ setlocal dict+=$HOME/.local/share/words/en-words.txt | 
"       \ setlocal dict+=$HOME/.local/share/words/id-words.txt

" " end of dictionary for english and indonesian words
" " }}}

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

" coc.nvim set statusline
try
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
catch
  echo 'coc.nvim statusline error'
endtry
" }}}
" }
