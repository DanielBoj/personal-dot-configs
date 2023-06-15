set number  "Show numbers on the line
set relativenumber  "The numbers above and below the line are relative to the line number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set cursorline
set wrap
set noshowmode
set smarttab
set tabstop=4
set softtabstop=4
" set paste   "Enable pasting
" set termguicolors

" Extra funcitons
" set nocompatible

" Autoindentacion
set autoindent 

" Load correctly the plugins
filetype plugin indent on

" Oculta tabs
" set nolist

" Speed up the scrolling
set ttyfast

" Search options
set hlsearch			" Highlight matches"
set incsearch			" Incremental searching"
set ignorecase		" Searches ae case sensitive..."
set smartcase			" ... unless they containt at least one capital letter"

"Theme
set background=dark
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1

" Autoclose Nerdtree
let NERDTreeQuitOnOpen=1

" COC
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Plugins
call plug#begin('~/.vim/plugged')

"Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/peaksea'

"Syntax highligh
Plug 'sheerun/vim-polyglot'

"Status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

"Nerdtree
Plug 'scrooloose/nerdtree'

"Tpying
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"Autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

"Ide
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'

" Adapt colors to typescript
Plug 'pangloss/vim-javascript'
"Git
Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'

" Dispatch
Plug 'tpope/vim-dispatch'

" Debugging
" Plug 'puremourning/vimspector' 
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'
" Lenguajes
" Python
Plug 'mfussenegger/nvim-dap-python'
" Java
Plug 'mfussenegger/nvim-dap-java' 
" C#
Plug 'mfussenegger/nvim-dap-netcore' 
" JavaScript
Plug 'mxsdev/nvim-dap-vscode-js'  
" TypeScript
Plug 'mfussenegger/nvim-dap-node' 
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Telescope requeriments
Plug 'nvim-lua/popup.vim'
Plug 'nvim-lua/plenary.vim'
Plug 'nvim-telescope/telescope.vim'

" Commentaries helper
Plug 'tpope/vim-commentary'

"CSS color preview
Plug 'ap/vim-css-color'

"Dev icons
Plug 'ryanoasis/vim-devicons'

"Terminal
Plug 'tc50cal/vim-terminal'

" Format
Plug 'sbdchd/neoformat'

" Copilot
Plug 'github/copilot.vim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Plugins
" source $HOME/.config/nvim/plugins.vim

" Configuring Debugger

" Mapping
let mapleader=" "

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" slplit resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" save & quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" shorter commands
" NerdTree
cnoreabbrev tree NERDTreeToggle
cnoreabbrev find NERDTreeFind

" blame
cnoreabbrev blame Gblame

cnoreabbrev diff Gdiff

" plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>as :Ag<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<CR>

" diagnostics
nnoremap <Leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>

" buffers
map <Leader>ob :Buffers<CR>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" fast search
nmap <Leader>s <Plug>(easymotion-s2)

" run current js file
nnoremap <Leader>x :!node %<cr>

" Format the code 
nnoremap <Leader>fm :Format<CR>

" Tmux split
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>hs :split<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>on :on<CR>

" CoC 
nnoremap <silent> <Leader>Cr <Plug>(coc-rename)
nnoremap <silent> <Leader>Ca <Plug>(coc-codeaction)
nnoremap <silent> <Leader>Cc <Plug>(coc-command)
nnoremap <silent> <Leader>Cdn <Plug>(coc-diagnostic-next)
nnoremap <silent> <Leader>Cdp <Plug>(coc-diagnostic-prev)
nnoremap <silent> <Leader>Cds <Plug>(coc-diagnostic-select)
nnoremap <silent> <Leader>Cf <Plug>(coc-fix-current)
nnoremap <silent> <Leader>Ci :CocInfo<CR>
nnoremap <silent> <Leader>Cl :CocList<CR>
nnoremap <silent> <Leader>Cr :CocRestart<CR>
nnoremap <silent> <Leader>Cs :CocStart<CR>
nnoremap <silent> <Leader>Cu :CocUpdate<CR>
nnoremap <silent> <Leader>Ch :CocList extensions<CR>
nnoremap <silent> <Leader>Co :CocList outline<CR>
" remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gdc <Plug>(coc-declarartion)

" remap for normal mode


" NERDTree
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeMinimalUI=1

"DAP mapping 
nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl :lua require'dap'.run_last()<CR>

" source $HOME/.config/nvim/maps.vim

" CoC Config
source $HOME/.config/nvim/cocconfig.vim

" Compilers
" source $HOME/.config/nvim/vimspector.vim

"colorscheme nord
colorscheme gruvbox
