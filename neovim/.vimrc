 "Performance of CoC
set updatetime=300
set signcolumn=yes

set number  "Show numbers on the line
set relativenumber  "The numbers above and below the line are relative to the line number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
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

" NerdTree 
" Autoclose Nerdtree
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Plugins
call plug#begin('~/.vim/plugged')

"Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes' " Retro scheme

"Syntax 
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', {'branch': 'main'}
Plug 'norcalli/nvim-colorizer.lua'

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
  " Snippets files 
Plug 'honza/vim-snippets'

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

" Adapt colors to typescript
Plug 'pangloss/vim-javascript'
"Git
Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'

" Dispatch
Plug 'tpope/vim-dispatch'

" Debugging
Plug 'puremourning/vimspector' 

" Commentaries helper
Plug 'tpope/vim-commentary' " gcc & gc for Commentaries

"CSS color preview
Plug 'ap/vim-css-color'

"Dev icons
Plug 'ryanoasis/vim-devicons'

"Terminal
Plug 'tc50cal/vim-terminal'

" Tagbar for code navigation
Plug 'preservim/tagbar'

" JavaScript React
Plug 'yuezk/vim-js'

" Copilot
Plug 'github/copilot.vim' 

call plug#end()

" Plugins
" source $HOME/.config/nvim/plugins.vim

" Plug configuration
" JS Bundle variables
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1 
augroup javascript_folding
  au!
  au FileType javasrcipt setlocal foldmethod=syntax 
augroup END

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" kite
"let g:kite_supported_languages = ['*']
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]
" tmux navigator
let g:tmux_navigator_no_mappings = 1

" coc
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

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

" remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>gs :CocSearch
" Coc select
inoremap <silent><expr> <space> coc#pum#visible() ? "\<SPACE>" : coc#refreh()

" tabs navigation
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>

" buffers
map <Leader>ob :Buffers<CR>

" faster scrolling
"nnoremap <C-p>: 10<C-e>
"nnoremap <C-;>: 10<C-y>

" fast search
nmap <Leader>s <Plug>(easymotion-s2)

" run current js file
nnoremap <Leader>x :!node %<cr>

" Split view
nnoremap <Leader>vs :vsp<CR>
nnoremap <Leader>hs :sp<CR>

" Tagbar toogle
nmap <F8> :TagbarToggle<CR>


" source $HOME/.config/nvim/maps.vim

" CoC Config
source $HOME/.config/nvim/cocconfig.vim

" Compilers
source $HOME/.config/nvim/vimspector.vim

" Auto enable snippets
"autocmd FileType javascript UltiSnipsAddFiletypes javascript-node

"colorscheme nord
colorscheme gruvbox
  

