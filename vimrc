" vim:set ft=vim et sw=4:

set nocompatible          " don't be compatible with vi

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

" assumes you have vim-plug installed

call plug#begin('~/.vim/plugged')

" Themes
Plug 'ayu-theme/ayu-vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'camgunz/amber'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'chriskempson/base16-vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'doums/darcula'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drsooch/gruber-darker-vim'
Plug 'flazz/vim-colorschemes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'madyanov/gruber.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'phanviet/vim-monokai-pro'
Plug 'rakr/vim-one'
Plug 'rose-pine/vim', { 'as' : 'rosepine' }
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'jadomag/curtailed'
Plug 'devsjc/vim-jb'


"indent guides
Plug 'nathanaelkane/vim-indent-guides'


" modeline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" lightline
"Plug 'itchyny/lightline.vim'

" Navigate and manipulate files in a tree view.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

Plug 'jiangmiao/auto-pairs'

" vim for writers
Plug 'reedes/vim-pencil'

" Distraction free writing
Plug 'junegunn/goyo.vim'

"Dim paragraphs above and below active paragraph
Plug 'junegunn/limelight.vim'

"Plug 'ctrlpvim/ctrlp.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-unimpaired'

Plug 'preservim/tagbar'

Plug 'eggbean/resize-font.gvim'

" Show git file changes in the gutter
Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'

" Git wrapper plugin
Plug 'tpope/vim-fugitive'

" Languages and file types
Plug 'vim-python/python-syntax'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
"Plug 'tpope/vim-markdown'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'ekalinin/dockerfile.vim'
Plug 'stephpy/vim-yaml'
Plug 'pangloss/vim-javascript'
Plug 'jceb/vim-orgmode'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" treesitter support for go syntax highlighting
Plug 'charlespascoe/vim-go-syntax'


" Markdown preview
Plug 'iamcco/markdown-preview.nvim'


Plug 'voldikss/vim-floaterm'


" let vim and tmux work well together
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

" Automatically show vim's complete menu while typing.
"Plug 'vim-scripts/AutoComplPop'

" Coc.vim completion
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Automatically executes filetype plugin indent on and syntax enable"
call plug#end()

" vim-plug automatically executes
if has('syntax') && !exists('g:syntax_on')
    syntax enable
endif

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Force some filetypes to be a certain type
au bufnewfile,bufRead *.pod set ft=perl
au bufnewfile,bufRead *.sub set ft=perl

function! AdjustFontSize(amount)
    let s:font_size = s:font_size + a:amount
    :execute "GuiFont! Consolas:h" . s:font_size
endfunction

if has("gui_running")
    set guifont=JetBrainsMonoNerdFont\ 12
    noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
    noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>

endif

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Enable 24-bit true colors if your terminal supports it.
"if has('termguicolors')
"    set termguicolors
"endif

set termguicolors

" https://github.com/vim/vim/issues/993#issuecomment-255651605
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" for 256 colors
set t_Co=256


" Enable syntax highlighting.
syntax enable

" Set the color scheme to dark.
set background=dark

"colorscheme onedark

let g:one_allow_italics = 1 " I love italic for comments
"colorscheme one

"colorscheme snazzy

"colorscheme gruvbox

"colorscheme nightfly

let g:moonflyItalics = v:true
let g:moonflyCursorColor = v:true
let g:moonflyTransparent = v:false
let g:moonflyUndercurls = v:true
let g:moonflyUnderlineMatchParen = v:true
let g:moonflyVirtualTextColor = v:true
let g:moonflyWinSeparator = 2
colorscheme moonfly

" has dark and light versions
"colorscheme curtailed

"colorscheme darcula

"colorscheme catppuccin_latte   " light

" dark versions
"colorscheme catppuccin_frappe
"colorscheme catppuccin_macchiato
"colorscheme catppuccin_mocha " darkest


let g:gruvbox_material_ui_contrast='high'
let g:gruvbox_material_background='hard'
"let g:gruvbox_material_foreground='material' " can be material, mix, original
"let g:gruvbox_material_foreground='material' " can be material, mix, original
"let g:gruvbox_material_foreground='mix' " can be material, mix, original
let g:gruvbox_material_foreground='original' " can be material, mix, original
let g:gruvbox_material_disable_italic_comment=0
let g:gruvbox_material_enable_italic=1
let g:grubbox_materal_better_performance=1
let g:gruvbox_material_cursor='orange'
let g:gruvbox_material_transparent_background=0
"let g:gruvbox_material_menu_selection_background='grey'
"let g:gruvbox_material_menu_selection_background='blue'
let g:gruvbox_material_menu_selection_background='orange'
let g:gruvbox_material_sign_column_background='none'
"let g:gruvbox_material_visual='reverse'
let g:gruvbox_material_visual='blue background'
"let g:gruvbox_material_statusline_style='default'
"let g:gruvbox_material_statusline_style='mix'
let g:gruvbox_material_statusline_style='original'
"colorscheme gruvbox-material
"let g:lightline = {'colorscheme' : 'gruvbox_material'}

"let g:disable_bg = 1
"let g:disable_float_bg = 1
"colorscheme rosepine
"colorscheme rosepine_moon " difference is the background
"set background=light
"colorscheme rosepine_dawn
" transparent background

" amber
"colorscheme amber

" ayu
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

" gruber
"colorscheme GruberDarker
" slightly better version
"colorscheme gruber


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

let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
let g:vim_monokai_tasty_machine_tint = 1              " use `mahcine` colour variant
let g:vim_monokai_tasty_highlight_active_window = 1   " make the active window stand out
"colorscheme vim-monokai-tasty

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

let g:dracula_italic = 1
"colorscheme dracula
"colorscheme wilight256

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
"let g:seoul256_background = 233
"colorscheme seoul256


" Specific colorscheme settings (must come after setting your colorscheme).
" if (g:colors_name == 'gruvbox')
 " if (&background == 'dark')
   " hi Visual cterm=NONE ctermfg=NONE ctermbg=237 guibg=#3a3a3a
 " else
   " hi Visual cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
   " hi CursorLine cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
   " hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
 " endif
" endif

" -----------------------------------------------------------------------------
" Highlight Overrides
" -----------------------------------------------------------------------------

":hi clear FoldColumn

hi clear VertSplit

" This leaves a nice underline
":hi clear CursorLine
":hi CursorLine cterm=underline ctermfg=NONE gui=underline guifg=NONE

hi clear SignColumn

" Spelling mistakes will be colored up red.
hi SpellBad   cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare  cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap   cterm=underline ctermfg=203 guifg=#ff5f5f

" make all comments italic
hi Comment cterm=italic gui=italic

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
"let &t_ut=''

"if (&term =~ '^xterm' && &t_Co == 256)
"  set t_ut= | set ttyscroll=1
"endif

"set t_ut= | set ttyscroll=1

hi clear Cursor
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

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
" endfunctiot

" let &statusline = s:statusline_expr()


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
"syntax sync minlines=200
"syntax sync maxlines=500

set exrc

" don't bell or blink
set noerrorbells visualbell t_vb=
set belloff=all
if (has("autocmd") && has("gui_running"))
    autocmd GUIEnter * set vb t_vb=
endif

" Sets cursor styles
" Block in normal, line in insert, underline in replace
"set guicursor=
"set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20
"set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20
" set guicursor=
" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> solid block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> solid underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> solid vertical bar (xterm).
"let &t_SI.= "\e[6 q" "SI = INSERT mode
"let &t_SR.= "\e[4 q" "SR = REPLACE mode
"let &t_EI.= "\e[2 q" "EI = NORMAL mode

"For VTE compatible terminals (urxvt, st, xterm, gnome-terminal 3.x, Konsole KDE5 and others), wsltty and Windows Terminal
"let &t_SI = "\<Esc>[6 q"
"let &t_SR = "\<Esc>[4 q"
"let &t_EI = "\<Esc>[2 q"

let &t_SI.= "\e[6 q" "SI = INSERT mode
let &t_SR.= "\e[4 q" "SR = REPLACE mode
"let &t_EI.= "\e[2 q" "EI = NORMAL mode
let &t_EI.= "\e[1 q" "EI = NORMAL mode

" konsole on KDE
"let &t_SI = "\<Esc>]50;CursorShape=6\x7"
"let &t_SR = "\<Esc>]50;CursorShape=4\x7"
"let &t_EI = "\<Esc>]50;CursorShape=2\x7"

" - entered insert mode
" let &t_SI = "^[[5 q^[]12;Magenta\007" " blinking bar (Ss) in magenta (Cs)
" - entered replace mode
" let &t_SR = "^[[0 q^[]12;Red\007" " blinking block (Ss) in red (Cs)
" - leaving insert/replace mode
" let &t_EI = "^[[2 q^[]112\007" " terminal power-on style (Se) and colour (Cr)




" reset the cursor on start (for older versions of vim, usually not required)
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END


" line numbers
"set relativenumber              " Display relative line numbers
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

" disable comment continuation
set formatoptions-=r formatoptions-=c formatoptions-=o

" to always set these options we use autocmd
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o formatoptions+=j


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
set matchpairs+=<:>             " Use % to jump between pairs
set virtualedit=block


set backspace=indent,eol,start  " allow backspacing over autoindent,EOL,BOL

" sets the cwd to whatever file is in view, allows for better omni completion
"set autochdir
set complete+=kspell
"set completeopt=menuone,longest
set completeopt=menuone,noinsert,noselect
"set complete-=i

"wildmenu
set wildmenu                    " Menu completion in command mode on <Tab>
set wildmode=full               " <Tab> cycles between all matching choices

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

"set wildchar=<Tab> wildmenu wildmode=full
"set wildcharm=<C-z>
"nnoremap <F5> :b <C-z>

" ignore python crud
set wildignore+=**/virtualenv_run/**,*.pyc,*.pyo,__pychache__

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore+=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


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
set ttimeoutlen=1

" Messages, info, status
set title                       " show title in console title bar
set cursorline                  " have line indicating the cursor position
"set cursorcolumn                " highlight cursor line underneath the cursor vertically
"set colorcolumn=80              " show column line
"set signcolumn=auto
set signcolumn=number
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
"set ttymouse=xterm2             " make vim play nice within tmux
set ttymouse=sgr
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
" set directory=/tmp        " set swap files to be in /tmp
set directory=/tmp//,.


" undo
set undofile
set undodir=~/.vim/undodir
set history=9000                " Set the commands to save in history default is 20

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
nmap # !!perl -pe'm{^\# ?}?s{^\#}{}:m{\S}?s{^}{\#}:1'<CR><LF>j

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

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" to quickly exit insert mode without pressing escape or Ctrl-C/Ctrl-[
"inoremap jj <esc>
"inoremap jk <esc>
"inoremap hj <esc>

" make shift Y tank till end of line, similar to shift D and shift C
nnoremap Y y$

" yank to x11 clipboard
nnoremap <leader>y "*y"

" Keep cursor at the bottom of the visual selection after you yank it.
"vmap y ygv<Esc>

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

nnoremap <silent> <C-m> <C-i>


" moving text 1 line up or down with ALT j/k in normal,insert and visual modes
" vnoremap k :m '<-2<cr>gv=gv
" vnoremap k :m '>+1<cr>gv=gv
" inoremap k <esc>:m .-2<cr>==gi
" inoremap k <esc>:m .+1<cr>==gi
"nnoremap k :m .-2<cr>==
"nnoremap j :m .+1<cr>==

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
" nnoremap <c-n> <c-d>
" nnoremap <c-p> <c-u>

" moves half a screen up/down and stays centered
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

" fix home/end keys in all modes
nmap OH <home>
cmap OH <home>
imap OH <home>
" move cursor one more char to right in normal mode
nmap OF <end>l
cmap OF <end>
imap OF <end>

" allow '-' to open the parent directory in netrw
nnoremap <silent> - :e %:h<cr>

" fix wierd delete key bug in insert mode
imap [3~ <del>

" Use Shift H and Shift L to move to beginning and end of line
noremap <s-h> 0
nnoremap <s-l> $

" bottom terminal
map <leader>t :bot terminal ++rows=20 ++close<cr>
" open terminal in new tab
map <leader>T :tab term ++close<cr>

" Clear search highlights.
map <Leader><Space> :let @/=''<CR>

" Prevent x and the delete key from overriding what's in the clipboard.
noremap x "_x
noremap X "_x
noremap <Del> "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Select all
nmap <C-a> gg<S-v>G

" move cursor to empty space at end of line
set virtualedit+=onemore
nnoremap $ $l


" commented out interferes with Coc mappings
" Edit Vim config file in a new tab.
"noremap <Leader>ev :tabnew $MYVIMRC<CR>
" Source Vim config file.
"noremap <Leader>sv :source $MYVIMRC<CR>
" map abreviations YOU'RE WELCOME!

" -----------------------------------------------------------------------------
" abbreviations
" -----------------------------------------------------------------------------


cabbrev WQ wq
cabbrev Wq wq
cabbrev W w
cabbrev Q q

cabbrev Vimrc e $MYVIMRC<cr>



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
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" remap window managment keys to CTRL + arrowkeys
nnoremap <C-Left> <c-w>h
nnoremap <C-Down> <c-w>j
nnoremap <C-Up> <c-w>k
nnoremap <C-Right> <c-w>l


" cycle through splits with shift <Tab>
"noremap <S-Tab> <c-w>w

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
" map 1 :tabnext 1
" map 2 :tabnext 2
" map 3 :tabnext 3
" map 4 :tabnext 4
" map 5 :tabnext 5
" map 6 :tabnext 6
" map 7 :tabnext 7
" map 8 :tabnext 8
" map 9 :tabnext 9
" map 0 :tabnext 10
"NOTE: ^[ is Ctrl-v ESC and ^M is Ctrl-v Ctrl-m


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

" Toggle quickfix window.
function! QuickFix_toggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            return
        endif
    endfor

    copen
endfunction
nnoremap <silent> <Leader>c :call QuickFix_toggle()<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" -----------------------------------------------------------------------------
" Basic autocommands
" -----------------------------------------------------------------------------

" Auto-resize splits when vim gets resized
autocmd VimResized * wincmd =

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Ensure tabs don't get converted to spaces in Makefiles.
autocmd FileType make setlocal noexpandtab


" Only show the cursor line in the active buffer.
augroup CursorLine
   au!
   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
   au WinLeave * setlocal nocursorline
augroup END


" Unset paste on InsertLeave.
autocmd InsertLeave * silent! set nopaste

" activate cursorline when in insert mode
" autocmd InsertEnter * set cursorline
" autocmd InsertLeave * set nocursorline

"autocmd InsertEnter * set cursorcolumn
"autocmd InsertLeave * set nocursorcolumn


" -----------------------------------------------------------------------------
" Plugin settings, mappings and autocommands
" -----------------------------------------------------------------------------

" ........
" vim-airline plugin
" ........

set noshowmode                  " vim-airline already displays mode

"Fonts for the Status Line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline_theme='gruvbox'
let g:airline_theme='gruvbox_material'
"let g:airline_theme='base16_gruvbox_dark_hard'
"let g:airline_theme='deus'
"let g:airline_theme='edge'
"let g:airline_theme='everforest'
"let g:airline_theme='sonokai'
"let g:airline_theme='wombat'
"let g:airline_theme='dracula'
"let g:airline_theme='onedark'
"let g:airline_theme='tokyonight'
"let g:airline_theme='luna'
"let g:airline_theme='simple'
"let g:airline_theme='zenburn'
"let g:airline_theme='tomorrow'
"let g:airline_theme='raven'
"let g:airline_theme='base16_spacemacs'
"let g:airline_theme='violet'
"let g:airline_theme='ayu_dark'
"let g:airline_theme='base16_brogrammer'
"let g:airline_theme='base16_dracula'
"let g:airline_solarized_bg='dark' " light and dark values
"let g:airline_theme='solarized'
"let g:airline_theme='dark'
"let g:airline_theme='monokai_tasty'
"let g:airline_theme='catppuccin_latte'
"let g:airline_theme='catppuccin_mocha'
"let g:airline_theme='nightfly'
"let g:airline_theme='rosepine'
let g:airline_theme='moonfly'



" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................

let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1

" .............................................................................
" preservim/vim-markdown
" .............................................................................

let g:vim_markdown_folding_disabled = 1

" pythonesque folding stylel
"let g:vim_markdown_folding_style_pythonic = 1

let g:vim_markdown_toc_autofit = 1

set conceallevel=2

" to disable conceal
"let g:vim_markdown_conceal = 0

" allows ge to follow file#anchor
let g:vim_markdown_follow_anchor = 1

" hightlight yaml frontmatter
let g:vim_markdown_frontmatter = 1

" do not require .md extentions for markdown links
" This is super useful for GitLab and GitHub wiki repositories.
let g:vim_markdown_no_extensions_in_markdown = 1

" how to open files using ge
" tab, vsplit, hsplit, current
" default is current
"let g:vim_markdown_edit_url_in = 'tab'


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

"let g:fzf_layout = { 'up': '~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

" Launch fzf with CTRL+P.
nnoremap <silent> <C-p> :FZF -m<CR>
nnoremap <silent> <Leader>p :FZF -m<CR>

" Map a few common things to do with FZF.
nnoremap <silent> <Leader><Enter> :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>

" Add an AllFiles variation that ignores .gitignore files
command! -bang -nargs=? -complete=dir AllFiles
    \ call fzf#run(fzf#wrap('allfiles', fzf#vim#with_preview({ 'dir': <q-args>, 'sink': 'e', 'source': 'rg --files --hidden --no-ignore' }), <bang>0))


nmap <leader>f :Files<cr>
nmap <leader>F :AllFiles<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>h :History<cr>
nmap <leader>r :Rg<cr>
nmap <leader>R :Rg<space>
nmap <leader>gb :GBranches<cr>


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

nnoremap <leader>n <esc>:NERDTreeToggle<cr>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" ............................................................................
" tagbar
" ............................................................................
let g:tagbar_foldlevel = 999
let g:tagbar_compact = 1
nmap <F8> :TagbarToggle<CR>

" ............................................................................
" vim-commentary
" ............................................................................

" toggle comments using Ctrl+/ in insert/normal modes
" I don't know the reason but vim recognises / as _
nnoremap <C-_> :Commentary<cr>j
inoremap <C-_> <Esc>:Commentary<cr>ji

" adjust c/c++ and java commentstring
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s


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


" .............................................................................
" vim-floaterm
" .............................................................................
"nnoremap   <silent>   <F7>    :FloatermNew<CR>
"tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
"nnoremap   <silent>   <F8>    :FloatermPrev<CR>
"tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
"nnoremap   <silent>   <F9>    :FloatermNext<CR>
"tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>


" .............................................................................
" vim-indent-guides
" .............................................................................

let g:indent_guides_enable_on_vim_startup = 0
" :IndentGuidesEnable
" :IndentGuidesDisable
" :IndentGuidesToggle
" to override
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" .............................................................................
" vim-go
" .............................................................................

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"let g:ale_linters = {
"  \ 'go': ['gopls'],
"  \}

" .............................................................................
" Coc.nvim
" .............................................................................

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
"set encoding=utf-8
" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
"set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
"set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"clangd.inlayHints.enable


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

" fix for kitty, I don't understand why this works for me to put this at the end
" this fixes a background issue for me.
let &t_Co=256
set t_ut= | set ttyscroll=1

"set t_SI = "\<Esc>[6 q"
"set t_SR = "\<Esc>[4 q"
"set t_EI = "\<Esc>[2 q"

let &t_SI.= "\e[6 q" "SI = INSERT mode
let &t_SR.= "\e[4 q" "SR = REPLACE mode
"let &t_EI.= "\e[2 q" "EI = NORMAL mode
let &t_EI.= "\e[1 q" "EI = NORMAL mode
