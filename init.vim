syntax enable

set guicursor=
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
"set smartindent
set autoindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set noshowmode
set cursorline

" Time before Vim allows the plugin's to run
set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin("~/.vim/plugged")
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
call plug#end()

" Plugin Configs
colorscheme gruvbox
set background=dark

" Sets Leader Key to Space
let mapleader = " "

let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Remapped Window Hopping
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

" File Explorer Shortcut
nnoremap <leader>pv :wincmd v<bar> :Ex <bar>  :vertical resize 30<CR>

" Remap Up and down for Popoups
" May want to remove when getting used to tmux
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Jump to Definition - coc
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Get into files quickly with FZF
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-o> :Buffers<CR>
let g:fzf_files_options = '--preview "bat"'
let g:fzf_layout = { 'window': {'width' : 0.8, 'height' : 0.8} }
let $FZF_DEFAULT_OPTS='--reverse'

" Startify Customization
let g:startify_custom_header = [
			\'',
			\' ________   _______   ________  ___      ___ ___  _____ ______      ',
			\'|\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    ',
			\'\ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   ',
			\' \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  ',
			\'  \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ ',
			\'   \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\',
			\'    \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|',
			\'',
			\'',
			\]
let g:startify_session_dir = '~/.vim/sessions'

" Custom KeyCombos

