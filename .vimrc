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
Plugin 'xwsoul/vim-zephir'
Plugin 'groenewege/vim-less'
Plugin 'tomasr/molokai'
Plugin 'heavenshell/vim-jsdoc'
Plugin '907th/vim-auto-save'
Plugin 'szw/vim-tags'
call vundle#end()
filetype plugin indent on
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_inactive_collapes=1
let g:airline_extensions = ['tabline', 'branch', 'whitespace', 'syntastic', 'tagbar', 'csv', 'hunks']
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tabs=1
set t_Co=256
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme='molokai'
colorscheme molokai
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
let g:ctrlp_mruf_max=4
let g:ctrlp_match_window='bottom,order:btt,min:1,max:8,results:64'
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
let g:syntastic_php_checkers = ['php']
set tags+=tags;
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_additional_descriptions=1
let g:jsdoc_return=1
let g:jsdoc_access_descriptions=1
let g:gitgutter_highlight_lines=0
let g:gitgutter_max_signs=4096
let g:gitgutter_realtime=1
let g:auto_save=0
let g:auto_save_no_updatetime=1
let g:auto_save_in_insert_mode=0
let notabs=0
set t_vb=
set visualbell
set errorbells
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
set clipboard=autoselectplus
set switchbuf=newtab,usetab
set laststatus=2
set formatoptions+=t
set cursorline
set nospell
set iskeyword-={,},(,),\<,\>,\,,.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown,text,gitcommit set spell spelllang=en
autocmd FileType markdown,text set textwidth=80
autocmd FileType markdown,text set formatoptions+=t
autocmd FileType php,zephir set tabstop=4
autocmd FileType php,zephir set shiftwidth=4
autocmd FileType php,zephir set noexpandtab
autocmd BufNewFile,BufReadPost *.dom set filetype=apache
autocmd FileType apache set tabstop=4
autocmd FileType apache set shiftwidth=4
autocmd FileType apache set expandtab
nnoremap <silent> tn :NERDTreeToggle<CR>
nnoremap <silent> ts :AutoSaveToggle<CR>
nnoremap <silent> :rm :call delete(expand('%'))<CR>:bdelete!<CR>
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
inoremap <C-\> <C-O>o
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("\<C-x><c-i>"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("\<C-x><c-o>"))
syntax enable
syntax on

