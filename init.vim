call plug#begin()
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'wakatime/vim-wakatime'
Plug 'nvim-lua/plenary.nvim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'vim-airline/vim-airline'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'oxfist/night-owl.nvim'
Plug 'zefei/cake16'
Plug 'junegunn/goyo.vim'
call plug#end()

set syntax=on
set colorcolumn=80
set nowrap
set termguicolors
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showbreak=↪\
set list
set listchars=tab:\ \|,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set foldmethod=expr
set foldexpr=lsp#ui#vim#folding#foldexpr()
set foldtext=lsp#ui#vim#folding#foldtext()
set nofoldenable

colorscheme lunaperche

" LSP Options ----------------------------------------------------------------

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


set foldmethod=expr
      \ foldexpr=lsp#ui#vim#folding#foldexpr()
      \ foldtext=lsp#ui#vim#folding#foldtext()


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" CMD+t toggles NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" Async Complete Options -----------------------------------------------------
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
