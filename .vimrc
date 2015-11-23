scriptencoding utf-8
set encoding=utf-8
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tobyS/vmustache'
Plugin 'xolox/vim-misc'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'tlaziuk/vim-system-copy'
Plugin 'tomasr/molokai'
Plugin '907th/vim-auto-save'
Plugin 'xolox/vim-easytags'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
" Vala
Plugin 'y-ishida/vim-vala'
" Python
Plugin 'davidhalter/jedi-vim'
" Twig
Plugin 'evidens/vim-twig'
" Go
Plugin 'fatih/vim-go'
" Less
Plugin 'groenewege/vim-less'
" Zaphir
Plugin 'xwsoul/vim-zephir'
" markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
" Rust
Plugin 'rust-lang/rust.vim'
" CSV
Plugin 'chrisbra/csv.vim'
" PHP 
Plugin 'shawncplus/phpcomplete.vim'
" JavaScript
Plugin 'heavenshell/vim-jsdoc'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'burnettk/vim-angular'
Plugin 'posva/vim-vue'
" CoffeeScript
Plugin 'kchmck/vim-coffee-script'
" TypeScript
Plugin 'leafgarland/typescript-vim'
" Dart
Plugin 'dart-lang/dart-vim-plugin'
" GDB
Plugin 'joonty/vdebug'
" Volt
Plugin 'etaoins/vim-volt-syntax'
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
let g:ctrlp_mruf_max=32
let g:ctrlp_match_window='bottom,order:btt,min:1,max:8,results:64'
set wildignore+=node_modules/*,*/node_modules/*,node_modules
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
set tags+=tags;
set cpoptions+=d
let g:easytags_dynamic_files=2
let g:easytags_suppress_ctags_warning = 1
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
let notabs=0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
function! Multiple_cursors_before()
  exe 'NeoCompleteLock'
  echo 'Disabled autocomplete'
endfunction
function! Multiple_cursors_after()
  exe 'NeoCompleteUnlock'
  echo 'Enabled autocomplete'
endfunction
inoremap <expr><C-Space> neocomplete#start_manual_complete('omni')
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("\<C-x><c-i>"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("\<C-x><c-o>"))
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
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
set colorcolumn=80
set scrolloff=5
autocmd BufNewFile,BufReadPost *.md setlocal filetype=markdown
autocmd FileType markdown,text,gitcommit setlocal spell spelllang=en
autocmd FileType markdown,text setlocal textwidth=80
autocmd FileType markdown,text setlocal formatoptions+=t
autocmd FileType php,zephir setlocal tabstop=4
autocmd FileType php,zephir setlocal shiftwidth=4
autocmd FileType php,zephir setlocal expandtab
autocmd FileType php,zephir setlocal colorcolumn=85
autocmd BufNewFile,BufReadPost *.dom setlocal filetype=apache
autocmd FileType apache setlocal tabstop=4
autocmd FileType apache setlocal shiftwidth=4
autocmd FileType apache setlocal expandtab
autocmd BufRead *.vala,*.vapi setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead,BufNewFile *.vala,*.vapi setlocal filetype vala
nnoremap <silent> tn :NERDTreeToggle<CR>
nnoremap <silent> ts :AutoSaveToggle<CR>
nnoremap <silent> :rm :call delete(expand('%'))<CR>:bdelete!<CR>
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
noremap <silent> <F10> :noh<CR>
inoremap <C-\> <C-O>o
nnoremap <C-\> o
syntax enable
syntax on
