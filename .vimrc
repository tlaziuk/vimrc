scriptencoding utf-8
set encoding=utf-8
filetype off

if has('vim_starting')
    if &compatible
        set nocompatible
    endif

endif

function s:ExecutableArgument(cmd, arg)
    if executable(a:cmd)
        return a:arg
    endif
    return ''
endfunction

let g:YcmCompileArgs=s:ExecutableArgument('clang', '--clang-completer ') . s:ExecutableArgument('go', '--gocode-completer ') . s:ExecutableArgument('npm', '--tern-completer ') . s:ExecutableArgument('cargo', '--racer-completer ') . s:ExecutableArgument('xbuild', '--omnisharp-completer ')

call plug#begin(expand('~/.vim/bundle'))

" vimproc
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" YCM
if executable('cmake')
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py ' . g:YcmCompileArgs }
endif

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" utilities
Plug 'Shougo/unite.vim', { 'on': 'Unite' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'xolox/vim-misc'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'tlaziuk/vim-system-copy'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'xolox/vim-shell'
Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' }
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/PreserveNoEOL'

" themes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'freeo/vim-kalisi'
Plug 'sjl/badwolf'
Plug 'AlxHnr/clear_colors'
Plug 'junegunn/seoul256.vim'
" tags
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Vala
Plug 'y-ishida/vim-vala', { 'for': [ 'vala' ] }
" Twig
Plug 'evidens/vim-twig', { 'for': [ 'twig' ] }
" Go
Plug 'fatih/vim-go', { 'for': [ 'go', 'golang' ] }
" Less
Plug 'groenewege/vim-less', { 'for': [ 'less' ] }
" CSS
Plug 'skammer/vim-css-color', { 'for': [ 'css' ] }
" Zephir
Plug 'xwsoul/vim-zephir', { 'for': [ 'php', 'zephir' ] }
" markdown
Plug 'plasticboy/vim-markdown', { 'for': [ 'markdown' ] }
Plug 'shime/vim-livedown', { 'for': [ 'markdown' ] }
" Python
Plug 'jmcantrell/vim-virtualenv', { 'for': [ 'python', 'python2', 'python3' ] }
" XML
Plug 'sukima/xmledit', { 'do': 'make install' }
" Rust
Plug 'rust-lang/rust.vim', { 'for': [ 'rust' ] }
" CSV
Plug 'chrisbra/csv.vim'
" PHP
Plug 'shawncplus/phpcomplete.vim', { 'for': [ 'php' ] }
" JavaScript
Plug 'heavenshell/vim-jsdoc', { 'for': [ 'javascript', 'typescript' ] }
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript' ] }
" CoffeeScript
Plug 'kchmck/vim-coffee-script', { 'for': [ 'coffeescript' ] }
" TypeScript
Plug 'leafgarland/typescript-vim', { 'for': [ 'typescript' ] }
Plug 'HerringtonDarkholme/yats.vim', { 'for': [ 'typescript' ] }
" Dart
Plug 'dart-lang/dart-vim-plugin', { 'for': [ 'dart' ] }
" GDB
Plug 'joonty/vdebug'
" Volt
Plug 'etaoins/vim-volt-syntax', { 'for': [ 'volt' ] }
" nginx
Plug 'evanmiller/nginx-vim-syntax', { 'for': [ 'nginx' ] }

call plug#end()
filetype plugin indent on
let g:plug_timeout=1500

let mapleader=" "

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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" colorscheme
set t_Co=256
set background=dark
colorscheme badwolf
let g:solarized_termcolors=256

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

" syntastic
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
" syntastic options
let g:syntastic_typescript_tsc_args="--target es6 --module commonjs --experimentalDecorators"

set tags+=tags;
set cpoptions+=d
let g:easytags_async=1
let g:easytags_auto_highlight=0
let g:easytags_autorecurse=0
let g:easytags_dynamic_files=2
let g:easytags_suppress_ctags_warning=1

" easymotion
let g:EasyMotion_smartcase=1
map <Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s2)

" EditorConfig
let g:EditorConfig_exclude_patterns=['fugitive://.*']

let g:jsdoc_allow_input_prompt=1
let g:jsdoc_additional_descriptions=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1
let g:jsdoc_return=1
let g:jsdoc_return_description=1
let g:jsdoc_return_type=1
let g:jsdoc_access_descriptions=1
let g:vim_markdown_folding_disabled=1 " disable folding for vim-markdown
let g:livedown_autorun=0
let g:livedown_open=0
let g:gitgutter_highlight_lines=0
let g:gitgutter_max_signs=4096
let g:gitgutter_realtime=1
let g:ycm_min_num_of_chars_for_completion=1 " Minimum number of characters to trigger the completion
let g:ycm_collect_identifiers_from_tags_files=0 " Collect identifiers from tag files
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_seed_identifiers_with_syntax=1 " Completion for programming language's keyword
let g:ycm_complete_in_comments=1 " Completion in comments
let g:ycm_complete_in_strings=1 " Completion in string
let g:ycm_use_ultisnips_completer=1 " UltiSnips
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger='<C-k>'
let g:UltiSnipsJumpForwardTrigger='<C-k>'
let g:UltiSnipsJumpBackwardTrigger='<S-C-k>'
set completeopt=menu,menuone,preview
nnoremap <leader>g :YcmCompleter GoToDefinition<CR>
let g:phpcomplete_parse_docblock_comments=1
let notabs=0
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags noci

" autoread when file is changed
set autoread

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
set tabstop=4
set shiftwidth=4
set noexpandtab
set showcmd
set expandtab
set formatoptions=c,q,r,t
set smarttab
set number relativenumber
set showmatch

" search options
set ignorecase
set smartcase
set incsearch
set magic
set hlsearch

" perfomance
set lazyredraw

" ignore
set wildignore=node_modules,.git,.svn

" autowrite
set autowriteall

set ruler
set cindent autoindent smartindent
set linebreak
set selection=inclusive
set mousehide
set mouse=a
if !has('nvim')
    set ttymouse=xterm2
endif
set clipboard+=unnamedplus
set switchbuf=newtab,usetab
set laststatus=2
set formatoptions+=t
set cursorline
set nospell
set iskeyword-={,},(,),\<,\>,\,,.
set scrolloff=5
autocmd BufNewFile,BufReadPost *.md setlocal filetype=markdown
autocmd FileType markdown,text,gitcommit setlocal spell spelllang=en
autocmd BufNewFile,BufReadPost *.dom setlocal filetype=apache
autocmd BufRead,BufNewFile *.vala,*.vapi setlocal filetype vala
autocmd FileType vala setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
nnoremap <silent> <A-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <A-.> :sbnext<CR>:only<CR>
nnoremap <silent> <C-,> :sbprevious<CR>:only<CR>
nnoremap <silent> <C-.> :sbnext<CR>:only<CR>
nnoremap <silent> tp :sbprevious<CR>:only<CR>
nnoremap <silent> tn :sbnext<CR>:only<CR>
nnoremap <silent> tf :bfirst<CR>:only<CR>
nnoremap <silent> tl :blast<CR>:only<CR>
nnoremap <silent> <C-m> :LivedownToggle<CR>
nnoremap <silent> <C-A-b> :Autoformat<CR>
nnoremap <silent> <C-_> :TComment<CR>
vnoremap <silent> <C-_> :TComment<CR>
inoremap <C-\> <C-O>o
nnoremap <C-\> o
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif
syntax enable
syntax on

" include VIRTUAL_ENV reated scripts
let g:virtualenv_auto_activate=1
let $PYTHONPATH = $PATH
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

