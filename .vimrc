set nocompatible

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','
let g:ctrlp_custom_ignore='vendor\|node_modules\|DS_Store\|git'
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:30,results:30'
let g:user_emmet_leader_key='<C-E>'
let g:vim_markdown_folding_disabled = 1
let NERDTreeHijackNetrw=0

"colo oceandeep
"colo material
colo nord

hi LineNr guibg=bg
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg

set t_CO=256
set guifont=Monaco:h11
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
set backspace=indent,eol,start
set number
set relativenumber
set hlsearch
set incsearch
set splitbelow
set splitright
set nowrap
set smartindent
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=0
set linebreak
set shortmess=aOstT
set ruler
set clipboard+=unnamed
set hidden
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set showcmd
set showmode
set showmatch
set showfulltag
set gdefault
set backspace=indent,eol,start
set history=9999
set timeout
set timeoutlen=1000
set ttimeoutlen=100
set formatoptions+=n
set formatlistpat=^\\s*\\(\\d\\\|[-*]\\)\\+[\\]:.)}\\t\ ]\\s*
set autoread
set ignorecase
set smartcase
set fileencoding=utf-8
set encoding=utf-8
set foldmethod=marker
set foldmarker={{{,}}}
set nrformats=
set nobackup
set noswapfile

nmap <Leader>ev :tabedit $MYVIMRC<CR>
nmap <Leader>evp :tabedit ~/.vim/plugins.vim<CR>
nmap <Leader><space> :nohlsearch<CR>
nmap <Leader>N :NERDTree<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>f :tag<space>
nmap <C-R> :CtrlPBufTag<CR>
nmap <C-E> :CtrlPMRUFiles<CR>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap <C-Y> :redo<CR>

nnoremap / /\v
nnoremap ? ?\v
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>
nnoremap <tab> >>
nnoremap <s-tab> <<

vnoremap <tab> >
vnoremap <s-tab> <
vnoremap / /\v
vnoremap ? ?\v

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>

imap jj <esc>
imap <C-Return> <CR><CR><C-o>k<Tab>

cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Tabe tabe
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap

augroup AUTOSOURCE
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<C-N>"
	endif
endfunction

"Ctrl + ] = Go where the method is defined
"Ctrl + ^ = Go to the previous location
