scriptencoding utf-8
set encoding=utf-8
set nocompatible
filetype off

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('/home/tlaziuk/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'Valloric/YouCompleteMe', {
\ 'build' : {
\     'mac' : 'python2 install.py --clang-completer --gocode-completer',
\     'unix' : 'python2 install.py --clang-completer --gocode-completer',
\     'windows' : 'install.py --clang-completer --gocode-completer',
\     'cygwin' : 'python2 install.py --clang-completer --gocode-completer'
\    }
\ }

" utilities
NeoBundle 'Shougo/unite.vim'
NeoBundle 'sirver/ultisnips'
NeoBundle 'tobyS/vmustache'
NeoBundle 'xolox/vim-misc'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tlaziuk/vim-system-copy'
NeoBundle '907th/vim-auto-save'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'xolox/vim-shell'
" themes
NeoBundle 'tomasr/molokai'
" tags
NeoBundle 'majutsushi/tagbar'
NeoBundle 'xolox/vim-easytags'
" git
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
" Vala
NeoBundle 'y-ishida/vim-vala'
" Twig
NeoBundle 'evidens/vim-twig'
" Go
NeoBundle 'fatih/vim-go'
" Less
NeoBundle 'groenewege/vim-less'
" Zaphir
NeoBundle 'xwsoul/vim-zephir'
" markdown
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'suan/vim-instant-markdown'
" Python
NeoBundle 'jmcantrell/vim-virtualenv'
" XML
NeoBundle 'sukima/xmledit', {
\ 'build' : {
\     'windows' : 'make install',
\     'cygwin' : 'make install',
\     'mac' : 'make install',
\     'linux' : 'make install',
\     'unix' : 'make install',
\    },
\ }
" Rust
NeoBundle 'rust-lang/rust.vim'
" CSV
NeoBundle 'chrisbra/csv.vim'
" PHP
NeoBundle 'shawncplus/phpcomplete.vim'
" JavaScript
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'matthewsimo/angular-vim-snippets'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'posva/vim-vue'
" CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'
" TypeScript
NeoBundle 'leafgarland/typescript-vim'
" Dart
NeoBundle 'dart-lang/dart-vim-plugin'
" GDB
NeoBundle 'joonty/vdebug'
" Volt
NeoBundle 'etaoins/vim-volt-syntax'

call neobundle#end()
filetype plugin indent on
let g:neobundle#install_process_timeout=1500
let g:neobundle#types#git#enable_submodule=1
let g:neobundle#types#git#clone_depth=128
NeoBundleCheck

let mapleader=" "

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
let g:ctrlp_mruf_max=32
let g:ctrlp_match_window='bottom,order:btt,min:1,max:8,results:64'
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
set tags+=tags;
set cpoptions+=d
let g:easytags_dynamic_files=2
let g:easytags_suppress_ctags_warning=1
let g:easytags_async=1
let g:easytags_auto_highlight=0

" easymotion
let g:EasyMotion_smartcase=1
map <Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s2)

let g:jsdoc_allow_input_prompt=1
let g:jsdoc_additional_descriptions=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_return=1
let g:jsdoc_return_description=1
let g:jsdoc_return_type=1
let g:jsdoc_access_descriptions=1
let g:gitgutter_highlight_lines=0
let g:gitgutter_max_signs=4096
let g:gitgutter_realtime=1
let g:auto_save=0
let g:auto_save_no_updatetime=1
let g:auto_save_in_insert_mode=0
let g:ycm_min_num_of_chars_for_completion=1 " Minimum number of characters to trigger the completion
let g:ycm_collect_identifiers_from_tags_files=1 " Collect identifiers from tag files
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_seed_identifiers_with_syntax=1 " Completion for programming language's keyword
let g:ycm_complete_in_comments=1 " Completion in comments
let g:ycm_complete_in_strings=1 " Completion in string
let g:ycm_use_ultisnips_completer=1 " UltiSnips
set completeopt=menu,menuone,preview
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:phpcomplete_parse_docblock_comments=1
let notabs=0
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags noci

set t_vb=
set visualbell
set errorbells
let g:rehash256=1
set list listchars=eol:¬,nbsp:¶,tab:→·,trail:·,
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set noshowmode
set shortmess=a
set hlsearch
set tabstop=4
set shiftwidth=4
set noexpandtab
set showcmd
set expandtab
set formatoptions=c,q,r,t
set smarttab
set number relativenumber
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
set scrolloff=5
autocmd BufNewFile,BufReadPost *.md setlocal filetype=markdown
autocmd FileType markdown,text,gitcommit setlocal spell spelllang=en
autocmd FileType markdown,text setlocal textwidth=80 colorcolumn=80 formatoptions+=t
autocmd FileType php,zephir setlocal tabstop=4 shiftwidth=4 expandtab colorcolumn=85
autocmd BufNewFile,BufReadPost *.dom setlocal filetype=apache
autocmd FileType apache setlocal tabstop=4 shiftwidth=4 expandtab
autocmd BufRead *.vala,*.vapi setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead,BufNewFile *.vala,*.vapi setlocal filetype vala
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab colorcolumn=
nnoremap <silent> <A-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <A-.> :sbnext<CR>:only<CR>
nnoremap <silent> <C-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <C-.> :sbnext<CR>:only<CR>
nnoremap <silent> tp :sbprevious<CR>:only<CR>
nnoremap <silent> tn :sbnext<CR>:only<CR>
nnoremap <silent> tl :bfirst<CR>:only<CR>
nnoremap <silent> tf :blast<CR>:only<CR>
nnoremap <silent> <C-_> :TComment<CR>
vnoremap <silent> <C-_> :TComment<CR>
inoremap <C-\> <C-O>o
nnoremap <C-\> o
syntax enable
syntax on

" include VIRTUAL_ENV reated scripts
let g:virtualenv_auto_activate=1
let $PYTHONPATH = $PATH
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif
