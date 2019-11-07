
" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
Plug 'autozimu/LanguageClient-neovim'
Plug 'lervag/vimtex'

Plug 'HiPhish/ncm2-vlime'
Plug 'l04m33/vlime'

Plug 'makerj/vim-pdf'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'

call plug#end()

" Settings
set nocompatible

" Encoding
set encoding=UTF-8
set fileencoding=UTF-8

" Syntax
set cursorline
hi cursorline cterm=NONE ctermbg=black

" Filetype
filetype plugin indent on
syntax on

" Reload
set autoread

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Line number
set number
hi LineNr cterm=NONE ctermfg=blue

" Folding
set foldmethod=syntax
set foldlevelstart=99

" Ruler
set ruler
set cc=81
hi ColorColumn ctermbg=0

" Scroll offset
set so=5

" Search highlight
set hlsearch
set incsearch

" Search smartcase
set ignorecase
set smartcase

" Mouse support
set mouse=a
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

" --Plugins

" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "+",
    \ "Untracked" : "+",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "-",
    \ "Dirty"     : "~",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" indentline
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = '¦'

" --Mappings

" nerdtree
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>

" tagbar
nmap <F9> :TagbarToggle<CR>

" ncm2
" insert line after accept suggestion
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" nerdcommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv


