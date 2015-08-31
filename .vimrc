set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'xolox/vim-misc'
Plugin 'wting/rust.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'tlaziuk/vim-system-copy'
Plugin 'evidens/vim-twig'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on
let g:airline_theme='molokai'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_inactive_collapes=1
let g:airline_extensions = ['tabline', 'branch', 'whitespace', 'syntastic', 'tagbar', 'csv', 'hunks']
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tabs=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:ProjRootIndicators = [".git", "README.md", "LICENSE.md"]
let g:bufExplorerShowTabBuffer=0
let g:miniBufExplorerAutoStart=0
let g:miniBufExplSplitBelow=0
let g:miniBufExplorerMoreThanOne=0
let g:ctrlp_working_path_mode=''
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_show_hidden=1
let g:ctrlp_open_new_file='r'
let g:ctrlp_follow_symlinks=1
let g:ctrlp_cmd='CtrlPMixed'
let g:ctrlp_open_multiple_files='ij'
let g:ctrlp_regexp=0
let g:ctrlp_max_files=0
let g:ctrlp_mruf_max=256
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
let g:syntastic_php_checkers = ['php']
let g:easytags_on_cursorhold=1
let g:easytags_dynamic_files=1
let g:easytags_async=1
let g:easytags_autorecurse=0
set tags+=./tags;
let notabs=0
let g:rehash256=1
set list listchars=eol:¶,nbsp:¶,tab:\|~,trail:·,
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set noshowmode
set shortmess=a
set omnifunc=syntaxcomplete#Complete
set hlsearch
set tabstop=2
set shiftwidth=2
set showcmd
set expandtab
set formatoptions=c,q,r,t
set smarttab
set number
set showmatch
set smartcase
set incsearch
set ruler
set autoindent smartindent
set linebreak
set selection=inclusive
set mousehide
set mouse=a
set ttymouse=xterm
set clipboard=unnamedplus
set switchbuf=newtab,usetab
set laststatus=2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
nnoremap <silent> tn :NERDTreeToggle<CR>
nnoremap <silent> <F6> :only<CR>
nnoremap <silent> <F7> :sbprevious<CR>
nnoremap <silent> <F8> :sbnext<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <A-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <A-.> :sbnext<CR>:only<CR>
nnoremap <silent> <C-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <C-.> :sbnext<CR>:only<CR>
nnoremap <silent> tp :sbprevious<CR>:only<CR>
nnoremap <silent> tn :sbnext<CR>:only<CR>
nnoremap <silent> tl :bprevious<CR>:only<CR>
nnoremap <silent> tf :blast<CR>:only<CR>
nnoremap <silent> <C-_> :TComment<CR>
vnoremap <silent> <C-_> :TComment<CR>
noremap <silent> <F10> :noh<CR>
inoremap \nn <C-O>o
inoremap <C-\> <C-O>o
syntax enable
syntax on
colorscheme molokai

