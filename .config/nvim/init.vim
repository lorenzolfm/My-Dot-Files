"===========================================================
"===General=================================================

let mapleader="\<space>"    " Use space as leader
set encoding=utf-8          " The encoding displayed
set fileencoding=utf-8      " The encoding written to file
syntax on                   " Enable syntax highlight
set ttyfast                 " Faster redrawing
set lazyredraw              " Only redraw when necessary
set cursorline              " Find the current line quickly
set updatetime=300          " Set update time to 300ms
set nobackup                " Disable all backupfiles
set nowritebackup
set noswapfile

"====Plugins=================================================
call plug#begin()
"
"===Themes=and=layout========================================

" Vim Airline Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'

" A fancy start screen
Plug 'mhinz/vim-startify'

" Comprehensive syntax highlighting for C/C++
Plug 'jackguo380/vim-lsp-cxx-highlight'

"===Productivity==============================================

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Git support
Plug 'tpope/vim-fugitive'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Multiple-cursors (same as sublime text)
Plug 'terryma/vim-multiple-cursors'

" Edit HTML fast
Plug 'mattn/emmet-vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"===Fuctionality==============================================

" Add language support
Plug 'sheerun/vim-polyglot'

" linting
Plug 'w0rp/ale'

" File System Explorer
Plug 'preservim/nerdtree'

" Nerdtree git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git show diffs
Plug 'airblade/vim-gitgutter'

" Coc is an intellisense engine for Vim/Neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" LaTeX preview
Plug 'xuhdev/vim-latex-live-preview'

" Format C/C++
Plug 'rhysd/vim-clang-format'

call plug#end()

"===Plugin=configs============================================

" NerdTree

" NerdTreeToogle shortcut (space + q)
nnoremap <leader>q :NERDTreeToggle<CR>
" Close NerdTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Airline

" Setting airline onedark theme
let g:airline_theme='onedark'
" Enabling airline to use powerline fonts
let g:airline_powerline_fonts=1

" Emmet

" Redefining trigger key
let g:user_emmet_leader='<C-D>'

" Ale

" Fix files on save
let g:ale_fix_on_save=1
" Lint after 1s after changes are made both on insert and normal mode
let g:ale_lint_on_text_changed='always'
let g:ale_lint_delay=1000
" Use emojis for errors and warnings
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
" Fixer configurations
let g:ale_fixers={
\	'*': ['remove_trailing_lines', 'trim_whitespace']
\}
" Linter configurations
let g:ale_linters={
\	'c': ['gcc'],
\	'cpp': ['cpplint'],
\	'python': ['black']
\}

" COC

" C++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" TextEdit might fail if hidden is not set
set hidden

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:coc_global_extensions = [
\ 'coc-clangd',
\ 'coc-highlight'
\ ]

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enable color highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use command :Shs to switch between source and header files
command! -nargs=0 Shs    :CocCommand clangd.switchSourceHeader
nnoremap <Leader>f :<C-u>ClangFormat<CR>
"===Visual=configs===========================================

" 256 colors
set t_Co=256

" Theme
colorscheme onedark

" Display long lines as just one line
set nowrap

" Display relative line numbers
set relativenumber
set number

" Toogle invisible characters
set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

" Show changes when modifying text
set inccommand=split

" Open new split panes to right and bottom
set splitbelow
set splitright

"===Keymappings=============================================

" Access system clipboard
set clipboard=unnamed

"===Indentation==============================================

" Use space instead of tabs
set expandtab

" Use smarttab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set ai

" Smart indent
set si

"===Misc=====================================================

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o=

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
