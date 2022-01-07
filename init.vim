" VIMRC - Configuration File

set nu rnu
set wildmenu
set ruler
set hlsearch
set showmatch
set noerrorbells
set tabstop=4
set shiftwidth=4
set background=dark
set laststatus=2
set noshowmode
set foldmethod=indent
set foldlevelstart=99
set syntax=on

set listchars=tab:\|\ 
set list

let mapleader = " "
syntax enable

" ---------------
" --COLORSCHEME--
" ---------------

let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ }
try
	colorscheme desert
catch
endtry

" -----------
" --PLUGINS--
" -----------
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()

" ----------
" ---CMDS---
" ----------

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" COC
source ~/AppData/Local/nvim/autoload/coc.vimrc

" Navigation
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

" Clear Search History
nnoremap <esc><esc> :let @/ = ""<return>

" Emmet Commands
let g:user_emmet_leader_key=','

" Telescope Commands
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


