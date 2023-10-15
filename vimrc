" vim:set ft=vim et sw=4:

set nocompatible          " don't be compatible with vi

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" assumes you have vim-plug installed

call plug#begin('~/.vim/plugged')

" Atom One Dark theme.
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'colepeters/spacemacs-theme.vim'

Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" modeline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Navigate and manipulate files in a tree view.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'ctrlpvim/ctrlp.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-commentary'

Plug 'preservim/tagbar'

Plug 'tpope/vim-fugitive'

" Languages and file types
Plug 'vim-python/python-syntax'
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'pangloss/vim-javascript'

Plug 'christoomey/vim-tmux-navigator'

" Automatically executes filetype plugin indent on and syntax enable"
call plug#end()

" vim-plug automatically executes
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

filetype plugin indent on

" Force some filetypes to be a certain type
au bufnewfile,bufRead *.pod set ft=perl
au bufnewfile,bufRead *.sub set ft=perl


" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------
" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
" https://github.com/vim/vim/issues/993#issuecomment-255651605
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" for 256 colors
    set t_Co=256
    let g:rehash256=1
    set termguicolors
endif

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''


" Enable syntax highlighting.
syntax enable

" Set the color scheme to dark.
set background=dark

"colorscheme onedark

"colorscheme gruvbox

let g:gruvbox_contrast_dark='hard'
let g:grubbox_materal_better_performance = 1
colorscheme gruvbox-material

" edge_style vailable values: default, aura, neon
let g:edge_style = 'neon'
let g:edge_better_performance = 1

" edge_dim_foreground values 0(default), 1 gray foreground
"let g:edge_dim_foreground = 1
"colorscheme edge

" everforest_background values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'

" For better performance
let g:everforest_better_performance = 1
"colorscheme everforest


" sonokai_style values: default, atlantis, andromeda, shusia, maia, espresso
let g:sonokai_style = 'espresso'
let g:sonokai_better_performance = 1
let g:sonokai_enable_italic=1
let g:sonokai_transparent_background=0
"colorscheme sonokai

" tokyonight_style values: night, storm
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
"colorscheme tokyonight

"let g:solorized_termcolors=256
"colorscheme solarized

"colorscheme wombat
"colorscheme wombat256

" disable italics
let g:dracula_italic = 0
"colorscheme dracula
"colorscheme wilight256

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
"let g:seoul256_background = 233
"colorscheme seoul256


" -----------------------------------------------------------------------------
" Status line
" -----------------------------------------------------------------------------

" " Heavily inspired by: https://github.com/junegunn/dotfiles/blob/master/vimrc
" function! s:statusline_expr()
"   let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
"   let ro  = "%{&readonly ? '[RO] ' : ''}"
"   let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
"   let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
"   let sep = ' %= '
"   let pos = ' %-12(%l : %c%V%) '
"   let pct = ' %P'

"   return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
" endfunction

" let &statusline = s:statusline_expr()


" ----------------------------------------------------------------------------
" Highlights
" ----------------------------------------------------------------------------

":hi clear FoldColumn

:hi clear VertSplit

" This leaves a nice underline
":hi clear CursorLine
":hi CursorLine cterm=underline ctermfg=NONE gui=underline guifg=NONE



" ----------------------------------------------------------------------------
" Basic Settings
" ----------------------------------------------------------------------------

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vimrc"

set encoding=utf-8

" shorten updatetime for faster experience, default is 4000 ms (too long)
set updatetime=50
set redrawtime=4000 "Allow more time for loading syntax on large files, default=2000

"set min/max highlighted lines, from cursor position, helps with slow machines
syntax sync minlines=200
syntax sync maxlines=500

set exrc

" don't bell or blink
set noerrorbells visualbell t_vb=
set belloff=all
if (has("autocmd") && has("gui_running"))
    autocmd GUIEnter * set vb t_vb=
endif


" line numbers
set relativenumber              " Display relative line numbers
set number                      " Display line numbers
set numberwidth=1               " using only 1 column while possible

" Toggle relative line numbers and regular line numbers.
nmap <F6> :set invrelativenumber<CR>

set nowrap                      " do not wrap long lines

" tabs or spaces?
set tabstop=4                   " <tab> inserts 4
set softtabstop=4               " <BS> over an autoindent deletes both spaces
set shiftwidth=4                " indent level is 4
set expandtab                   " use spaces, not tables for autoindent/tab key
set autoindent
set smartindent
set smarttab

" to convert tabs to spaces
" set exandtab
" :retab!

" to convert spaces to tabs
" set noexpandtab
" :retab!


" Saving options in session and view files causes more problems than it
" solves, so disable it
set sessionoptions-=options
set viewoptions-=options

"if !empty(&viminfo)
"    set viminfo^=!
"endif

" display whitespace
" to enable use :set list

" displays tabs, line-ends and displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>,nbsp:+
"from vim-sensible
"set listchars=tab:>\ ,eol:$,trail:-,precedes:<,extends:>,nbsp:+

" Toggle visually showing all whitespace characters.
noremap <F7> :set list!<CR>
inoremap <F7> <C-o>:set list!<CR>
cnoremap <F7> <C-c>:set list!<CR>


set formatoptions+=j " Delete comment character when joining commented lines

" Replace the check for a tags file in the parent directory of the current
" file with a check in every ancester directory
if has('path_extra')
    setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" correctly highlight $() and other modern affordances in filetype=sh.
if !exists('g:is_posix') && !exists('g:is_bash') && !exists('g:is_kornshell') && !exists('g:is_dash')
    let g:is_posix=1
endif

" I hate folding
set foldmethod=manual
set foldlevel=99
set foldlevelstart=99
set nofoldenable                " disable folding

" searching
set incsearch
set showmatch
"set nohlsearch                  " don't leave highlighted search
set hlsearch                    " highlight search matches
set ignorecase
set smartcase
set gdefault                    " when substituting :s/// g is always on
set wrapscan                    " wrap around when searching

" disable search highlighting when <c-L> when refreshing the screen
"nnoremap <c-L> :nohl<cr><c-L>


set backspace=indent,eol,start  " allow backspacing over autoindent,EOL,BOL

" sets the cwd to whatever file is in view, allows for better omni completion
"set autochdir
set completeopt=menuone,noinsert,noselect
"set complete-=i

"wildmenu
set wildmenu                    " Menu completion in command mode on <Tab>
set wildmode=full               " <Tab> cycles between all matching choices

"set wildchar=<Tab> wildmenu wildmode=full
"set wildcharm=<C-z>
"nnoremap <F5> :b <C-z>

" ignore python crud
set wildignore+=**/virtualenv_run/**,*.pyc,*.pyo,__pychache__

" provides tab-completion for all file-related tasks
" this appends to the default path
"set path+=**
set path=.,**                   " search local and sub-dirs

set rtp+=~/.local/bin

"include project directories
"set path+=~/projects/**

set ruler

" moving around
set scrolloff=8                 " start scrolling when 8 lines away from bottom
set sidescrolloff=5             " start scrolling to right when 5 characters away
set display+=lastline
set nostartofline

" for faster scrolling
set ttyfast

" Messages, info, status
set guicursor=                  " configure cursor to be a block
set title                       " show title in console title bar
set cursorline                  " have line indicating the cursor position
"set colorcolumn=80              " show column line
set signcolumn=auto
set ruler                       " show the cursor position
set showcmd
"set showmode                   " show mode (insert,replace, etc..)
set laststatus=2                " always show statusline even if only 1 window
"set cmdheight=2
set modelines=2
set modeline                    " allow vim options to be embedded in files
setglobal modeline
set shortmess+=c
set textwidth=0

set mouse=a                     " allow mouse clicks to change cursor position
set ttymouse=xterm2             " make vim play nice within tmux
set term=xterm
set go=a

set icon


"set clipboard=unnamedplus


" set hidden hides buffers instead of closing them
set hidden

" backups
set nobackup                    " turn off backups
set nowritebackup
set noswapfile                  " turn off swap files
" set directory=/var/tmp        " set swap files to be in /var/tmp

" undo
set undodir=~/.vim/undodir
set undofile
set history=9000

"set paste
set pastetoggle=<F4>

set noautowrite                 " don't write unless i request it
set noautowriteall              " never
set autoread                    " autommatically reread changed files
set ffs=unix,dos,mac            " try recognizing dos, unix & mac line endings
" allways diff v
" disable italicsertically
set diffopt+=vertical

" disable leader timeout
set notimeout
set ttimeout

set spelllang=en_us

if executable('rg')
    let g:rg_derive_root='true'
endif


" I can't live without this!
set comments=n:#                " python/perl/bash comments
map # !!perl -pe'm{^\# ?}?s{^\#}{}:m{\S}?s{^}{\#}:1'<CR><LF>


" -----------------------------------------------------------------------------
" some useful key bindings
" -----------------------------------------------------------------------------

" set leader key to spacebar
let mapleader=" "
let maplocalleader=" "

" remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" to quickly exit insert mode without pressing escape or Ctrl-C/Ctrl-[
inoremap jj <esc>
"inoremap jk <esc>
"inoremap hj <esc>

" make shift Y tank till end of line, similar to shift D and shift C
nnoremap Y y$

" yank to x11 clipboard
nnoremap <leader>y "*y"

" paste from x11 clipboard
nnoremap <leader>p "*p"

" repaste selected text
nnoremap gp `[v`]

" keeping it centered while searching, zz centre, zv openfold
nnoremap n nzzzv
nnoremap N Nzzzv
" keeps line concatination centered
nnoremap J mzJ`z
"nnoremap <C-j> :cnext<cr>zzzv

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ; ;<c-g>u
inoremap : :<c-g>u
inoremap [ [<c-g>u
inoremap } }<c-g>u
inoremap { {<c-g>u
inoremap " "<c-g>u
inoremap ' '<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" moving text
"vnoremap J :m '>+1<cr>gv=gv
"vnoremap K :m '<-2<cr>gv=gv
"inoremap <C-j> <esc>:m .+1<cr>==gi
"inoremap <C-k> <esc>:m .-2<cr>==gi
"nnoremap <leader>j :m .+1<cr>==
"nnoremap <leader>k :m .-2<cr>==

" add quotes around visual selection
vnoremap " <esc>`>a"<esc>`<i"<esc>

"edit command
cnoremap %% <c-r>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" better tabbing
vnoremap < <gv
vnoremap > >gv

" better page up/down
" nnoremap <c-n> <d-d>
" nnoremap <c-p> <c-u>

" moves half a screen up/down and stays centered
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

" fix home/end keys in all modes
map OH <home>
cmap OH <home>
imap OH <home>
map OF <end>
cmap OF <end>
imap OF <end>

" allow '-' to open the parent directory in netrw
nnoremap <silent> - :e %:h<cr>

" fix wierd delete key bug in insert mode
imap [3~ <del>

" Use Shift H and Shift L to move to beginning and end of line
nnoremap <s-h> 0
nnoremap <s-l> $

" bottom terminal
map <leader>t :bot terminal ++rows=20 ++close<cr>
" open terminal in new tab
map <leader>T :tab term ++close<cr>

" map abreviations YOU'RE WELCOME!
cabbrev WQ wq
cabbrev Wq wq
cabbrev W w
cabbrev Q q

cabbrev Vimrc e ~/.vimrc<cr>


" -----------------------------------------------------------------------------
" splits and tabs
" -----------------------------------------------------------------------------
"set noequalalways              " all windows not same size after split or close
set splitbelow                  " split new horizontal window below
set splitright                  " split new textplorer vertically

set tabpagemax=50

":sp for horizontal split
":vsp for vertical split

nnoremap <leader><bar> :vsplit<cr>
nnoremap <leader>- :split<cr>

" allow gf to edit non-existant files
map gf :edit <cfile><cr>
nnoremap <leader>gf :edit cfile<cr>

" gf edit fiel under cursor in same window
" <c-w>f - edit file under cursor in horiz split
" <c-w>vgf - edit file under cursor in vert split
" try mapping to <c-w><c-F>
" edit file under cursor in vert split window
"<c-w>gf - edit file under cursor in new tab
"Ctrl-^ or <c-6> opens previous file
nnoremap <c-w><c-F> <c-w>vgf


" remap window management keys to CTRL + hjkl
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" remap window managment keys to CTRL + arrowkeys
map <C-Left> <c-w>h
map <C-Down> <c-w>j
map <C-Up> <c-w>k
map <C-Right> <c-w>l


" cycle through splits with shit <Tab>
noremap <S-Tab> <c-w>w

" note: alternative below is to just use your mouse
" adjust split sizes more friendly (resizes +/- 3)
nnoremap <silent> <leader>h :vertical resize -3<CR>
nnoremap <silent> <leader>l :vertical resize +3<CR>
nnoremap <silent> <leader>j :resize +3<CR>
nnoremap <silent> <leader>k :resize -3<CR>

" <c-w>o focuses on just one window
" <c-w>| expands split horizontally
" <c-w>_ expands split verically
" <c-w>= equalizes splits
map <leader>= <c-w>=
"map <leader><bar> <c-w>| " I use this for vsplit
map <leader>_ <c-w>_

" removes pipes | that act as seperators on splits
" since i have linenumbers on it acts like a seperator
"set fillchars="vert:,fold:-,eob:~"
" to change character from pipes to something else
"set fillchars+=vert:\
:hi clear VertSplit


" rotate splits from vertical to horizontal or horizontal to vertical
"map <leader>th <c-w>t<c-w>H
"map <leader>tk <c-w>t<c-w>K

" switch between tabes with ALT-1, ALT-2, ALT-3,....ALT-0
map ␛1 ␛:tabnext 1
map ␛2 ␛:tabnext 2
map ␛3 ␛:tabnext 3
map ␛4 ␛:tabnext 4
map ␛5 ␛:tabnext 5
map ␛6 ␛:tabnext 6
map ␛7 ␛:tabnext 7
map ␛8 ␛:tabnext 8
map ␛9 ␛:tabnext 9
map ␛0 ␛:tabnext 10
"NOTE: ^[ is Ctrl-v ESC and ^M is Ctrl-v Ctrl-m

" Select all
nmap <C-a> gg<S-v>G


" Tab management
nmap <silent> <c-t>n :tabnew<cr>
nmap <silent> <c-t>h :tabprev<cr>
nmap <silent> <c-t>l :tabnext<cr>
nmap <silent> <c-t>c :tabclose<cr>
nmap <silent> <c-t>d :tabe %<cr>

" cycle through tabs with shift TAB
"nmap <S-Tab> :tabnext<cr>
" cycle through tabs with Ctrl-TAB
nmap <silent> <C-Tab> :tabnext<cr>

" Buffer Management
nnoremap <F9> :buffers<cr>:buffer<space>

" cycle through buffers C-Up/Down like vscode
nmap <C-PageUp> :bp<cr>
nmap <C-PageDown> :bn<cr>

"list buffers
nmap <silent> <leader>fb :buffers<cr>
nmap <silent> <leader>fm :marks<cr>

" -----------------------------------------------------------------------------
" Basic autocommands
" -----------------------------------------------------------------------------

" Ensure tabs don't get converted to spaces in Makefiles.
autocmd FileType make setlocal noexpandtab



" -----------------------------------------------------------------------------
" Plugin settings, mappings and autocommands
" -----------------------------------------------------------------------------

" ........
" vim-airline plugin
" ........

set noshowmode                  " vim-airline already displays mode

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline_theme='gruvbox'
let g:airline_theme='gruvbox_material'
"let g:airline_theme='edge'
"let g:airline_theme='everforest'
"let g:airline_theme='sonokai'
"let g:airline_theme='wombat'
"let g:airline_theme='dracula'
"let g:airline_theme='onedark'
"let g:airline_theme='tokyonight'
"let g:airline_theme='luna'

" ............................................................................
" ctrlp
" ............................................................................

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" .............................................................................
" junegunn/fzf.vim
" .............................................................................

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

" Launch fzf with CTRL+P.
"nnoremap <silent> <C-p> :FZF -m<CR>
nnoremap <silent> <Leader>p :FZF -m<CR>

" Map a few common things to do with FZF.
nnoremap <silent> <Leader><Enter> :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>

" Allow passing optional flags into the Rg command.
"   Example: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \ "rg --column --line-number --no-heading --color=always --smart-case " .
  \ <q-args>, 1, fzf#vim#with_preview(), <bang>0)


" ............................................................................
" scrooloose/nerdtree
" ............................................................................

let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

map <leader>n :NERDTreeToggle<cr>


" ............................................................................
" tagbar
" ............................................................................
let g:tagbar_foldlevel = 999
let g:tagbar_compact = 1
nmap <F8> :TagbarToggle<CR>

" ............................................................................
" nerdcommentor
" ............................................................................
" Create default mappings
let g:NERDCreateDefaultMappings = 1
"<leader>cc Comment out the current line or text selected in visual mode.
"<leader>c<space> Toggles the comment state of the selected line(s).

" ............................................................................
" vim-commentary
" ............................................................................


" ............................................................................
" vim-fugitive
" ............................................................................
"

" .............................................................................
" ntpeters/vim-better-whitespace
" .............................................................................

let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1
let g:strip_whitespace_on_save=1


" .............................................................................
" vim-tmux-navigator
" .............................................................................

let g:tmux_navigator_no_mappings = 1

noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <c-\> :<C-U>TmuxNavigatePrevious<cr>

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" Disable wrapping
let  g:tmux_navigator_no_wrap = 1


" ............................................................................
" netrw
" ............................................................................

"1 - open files in a new horizontal split
"2 - open files in a new vertical split
"3 - open files in a new tab
"4 - open in previous window
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize = 25
"let g:netrw_altv = 1
"let g:netrw_preview=1

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" take a look at vim-vinegar
" open file vertically to the right
function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-l>
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-l>
endfunction

function! NetrwMappings()
  " Hack fix to make ctrl-l work properly
  noremap <buffer> <C-l> <C-w>l
  noremap <buffer> V :call OpenToRight()<CR>
  noremap <buffer> H :call OpenBelow()<CR>
endfunction

"noremap <silent> <C-f> :call ToggleNetrw()<CR>
noremap <silent> <leader>f :call ToggleNetrw()<CR>
noremap <silent> <leader>pv :Ex<CR>

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END

" Allow for netrw to be toggled
let g:NetrwIsOpen=0
function! ToggleNetrw()
  if g:NetrwIsOpen
    let i = bufnr("$")
    while (i >= 1)
      if (getbufvar(i, "&filetype") == "netrw")
        silent exe "bwipeout " . i
      endif
      let i-=1
    endwhile
    let g:NetrwIsOpen=0
  else
    let g:NetrwIsOpen=1
    silent Lexplore
  endif
endfunction
