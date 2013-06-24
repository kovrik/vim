" VIM config
set nocompatible

let auto_install_bundles = 1
" =============== NEOBUNDLE BEGIN ==============
filetype off " required!
" === Setting up NEOBUNDLE ==============================================
    let neobundle_installed = 0
    " let neobundle_readme = expand('~/.vim/bundle/vundle/README.md')
    let neobundle_readme = expand('~/.vim/bundle/neobundle.vim/README.md')
    if !filereadable(neobundle_readme)
        echo ""
        echo "======================="
        echo "Installing NeoBundle..."
        echo "======================="
        silent !mkdir -p ~/.vim/bundle
        " silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        silent !git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
        let neobundle_installed = 1
    endif
    " set rtp+=~/.vim/bundle/vundle/
    if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif

    " call vundle#rc()
    call neobundle#rc(expand('~/.vim/bundle/'))
    " Bundle 'gmarik/vundle'
    "=== BUNDLES LIST ======================
    NeoBundle 'godlygeek/tabular'
    NeoBundle 'Raimondi/delimitMate'
    NeoBundle 'vim-scripts/Colour-Sampler-Pack'
    NeoBundle 'c9s/perlomni.vim'
    NeoBundle 'vim-scripts/perl-support.vim'
    NeoBundle 'vim-scripts/pmd.vim'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'fholgado/minibufexpl.vim'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'thinca/vim-quickrun'
    NeoBundle 'aaronbieber/quicktask'
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'MarcWeber/vim-addon-mw-utils'
     " dependency
    NeoBundle 'tomtom/tlib_vim'
    NeoBundle 'vim-scripts/tComment'
    NeoBundle 'vim-scripts/VisIncr'
    NeoBundle 'wikitopian/hardmode'
    NeoBundle 'Shougo/neocomplcache.vim'
    NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/unite.vim'
    " Bundle 'Shougo/vimproc.vim'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'vim-scripts/closetag.vim'
    NeoBundle 'paradigm/TextObjectify'
    NeoBundle 'coderifous/textobj-word-column.vim'
    NeoBundle 'kovrik/lucius_dark'
    NeoBundle 'CSApprox'
    NeoBundle 'ZenCoding.vim'
    NeoBundle 'MatchTag'
    NeoBundle 'matchit.zip'
    NeoBundle 'javacomplete'
    NeoBundle 'EasyGrep'
    NeoBundle 'VimOutliner'
    NeoBundle 'gnupg.vim'
    "=== BUNDLES LIST END ==============
    if neobundle_installed == 1
        if auto_install_bundles == 1
            " :BundleInstall
            :NeoBundleInstall
        endif
    endif
" === Setting up NEOBUNDLE end ==============================================
set background=dark
set timeout timeoutlen=1000 ttimeoutlen=100
set modelines=0
set autoindent
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" set undofile
if version > 720
    set undofile
    set undodir=~/vimundo/
endif

set cursorline
set listchars=nbsp:¬,extends:»,precedes:«,trail:~
set list
" hide toolbar and scrollbars
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb

set wrap " turn on wrapping
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85
" For regular expressions turn magic on
set magic
set wildmenu
set ttyfast
set ruler
set number
set vb
set lbr                                    " wrap whole words
set hidden                                 " не выгружать буфер когда переключаешься на другой
set mouse=a                                " turn on mouse in terminal
set mousehide                              " hide mouse in insert mode
set showcmd                                " показывать незавершенные команды в статусбаре (автодополнение ввода)
set matchpairs+=<:>                        " show matching brackets for HTML tags
set showmatch                              " show first matching parenthesis after inserting the second
set autoread                               " reread changed files automatically
set t_ut=
set t_Co=256                               " use 256 colors in terminal
set confirm                                " use dialogs instead of error messages
set backspace=indent,eol,start             " backspace обрабатывает отступы, концы строк
set sessionoptions=curdir,buffers,tabpages " опции сессий - перейти в текущию директорию, использовать буферы и табы
set noswapfile                             " do not use swap file
set browsedir=current
" scrolling
set scrolloff=10
set sidescrolloff=15
set sidescroll=1
" keep indentation when pasting
set pastetoggle=<F7>
" search settings
set ignorecase " ignore case when searching
set smartcase  " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set hls        " highlight search results
set incsearch  " incremental search
" folding settings
set foldenable         " enable folding
set foldmethod=indent
set foldcolumn=2       " show folding column
set foldlevel=999      " do not fold automatically

set laststatus=2       " always show statusline
" indent settings
set cindent     " C-like indents
set smartindent " smart indentation
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf8
set fencs=utf-8,cp1251,koi8-r,cp866 " encodings order
set ffs=unix,dos,mac " file format order
set winaltkeys=no " disable menu access via ALT+<key>
set guifont=Liberation\ Mono\ Bold\ 12

let NERDTreeShowHidden=1

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:tex_flavor='latex'

" syntastic tweaks
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1

" omnicompleteion
set complete-=i
set ofu=javacomplete#Complete

" ========= AUTOCOMMANDS BEGIN  ======================
autocmd BufWritePost .vimrc source % " Automatically refresh VIM after vimrc changes

autocmd FileType java       set omnifunc=javacomplete#CompleteJava
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType c          set omnifunc=ccomplete#CompleteCpp

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m

autocmd FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType scala set tabstop=2 shiftwidth=2 softtabstop=2

" clear settings if editing crontab
autocmd BufNewFile,BufRead crontab.* setfiletype crontab
autocmd FileType crontab set nobackup
autocmd FileType crontab set noswapfile
autocmd FileType crontab set noundofile
" ========= AUTOCOMMANDS END  ======================

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1
let perl_sync_dist     = 250
let perl_folding       = 1  " perl classes and functions folding
let php_folding        = 1  " php classes and functions folding

" indent highlight
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size  = 1

" === swap windows BEGIN
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

" === swap windows END
nnoremap <silent> <leader>mw :call MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call DoWindowSwap()<CR>

" Neocomplcache BEGIN =========================
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder
let g:neocomplcache_lock_buffer_name_pattern = '\*ctrp\*'

" Recommended key-mappings.
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Neocomplcache END  =========================

" neosnippet BEGIN ===========================
" inoremap <C-k> <Plug>(neosnippet_expand_or_jump)
" snoremap <C-k> <Plug>(neosnippet_expand_or_jump)
" xnoremap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" neosnippet END =============================

" NERDTree
noremap <F2> :NERDTreeToggle<CR>

" map perltidy (only for selected blocks in visual mode!)
vnoremap <Leader>pt :!perltidy -l=0 -lp -cti=1 -pt=2 -bt=2 -sbt=2 -ce <CR>

" dont use Q for Ex mode
noremap Q :q

" disable arrows
nnoremap <up>     <nop>
nnoremap <down>   <nop>
nnoremap <left>   <nop>
nnoremap <right>  <nop>
inoremap <up>     <nop>
inoremap <down>   <nop>
inoremap <left>   <nop>
inoremap <right>  <nop>

noremap <Leader><CR> :nohlsearch<CR>

" turns off Vim’s crazy default regex characters and makes searches use normal regexes
nnoremap / /\v
vnoremap / /\v

" reselect after indent
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" strip all trailing whitespaces
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>

" select text that was just pasted
nnoremap <leader>v V`]

" quickly open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" quickly move between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" force saving files that require root permissions
cnoremap w!! %!sudo tee > /dev/null %

" toggle centered-view mode on/off
nnoremap \zz  :let &scrolloff=999-&scrolloff<CR>

" switch buffers
nnoremap <leader>ls :ls<CR>:sb<Space>

noremap <F10> :QuickRun<CR>

" toggle folding
nnoremap <Space> za
vnoremap <Space> za

" make Y behave like other capitals
nnoremap Y y$

" Underline the current line with dashes in normal mode
nnoremap <F6> yyp<c-v>$r=

" Underline the current line with dashes in insert mode
inoremap <F6> <Esc>yyp<c-v>$r=A

noremap <C-S-I> :call <SID>SynStack()<CR>
noremap <leader>cp :SyntasticJavacEditClasspath<CR>

" default color scheme
if has("gui_running")
    colorscheme lucius_dark
else
    if $TERM =~ "-256color"
        colorscheme lucius_dark
    else
        colorscheme lucius_dark
    endif
endif

" MiniBufExplorer
let g:miniBufExplCheckDupeBufs      = 1
let g:miniBufExplorerAutoUpdate     = 1
let g:miniBufExplForceDisplay       = 1
let g:miniBufExplMapWindowNavVim    = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs  = 1
let g:miniBufExplModSelTarget       = 1

" Tab completion
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current line to one character right of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor

  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif

  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

hi NonText    guifg=#444444 guibg=#333333
hi SpecialKey guifg=#333333

" UNITE BEGIN =================
" File searching like CtrlP
nnoremap <C-p> :Unite file_rec/async<cr>
" Content searching like ack.vim
nnoremap <space>/ :Unite grep:.<cr>
" Buffer switching like LustyJuggers
nnoremap <space>s :Unite -quick-match buffer<cr>
" Yank history like yankring
" nnoremap <space>y :Unite history/yanks<cr>
" UNITE END   =================

" " Don't save backups of *.gpg files
set backupskip+=*.gpg

" Statusline modifications, added Fugitive Status Line & Syntastic Error Message {{{2
let g:last_mode = ''
function! Mode()
    let l:mode = mode()

    if l:mode !=# g:last_mode
        let g:last_mode = l:mode

        hi User2 guifg=#005f00 guibg=#dfff00 gui=BOLD    ctermfg=22  ctermbg=190 cterm=BOLD
        hi User3 guifg=#FFFFFF guibg=#414243 ctermfg=255 ctermbg=241
        hi User4 guifg=#414234 guibg=#2B2B2B ctermfg=241 ctermbg=234
        hi User5 guifg=#4e4e4e guibg=#FFFFFF gui=bold    ctermfg=239 ctermbg=255 cterm=bold
        hi User6 guifg=#FFFFFF guibg=#8a8a8a ctermfg=255 ctermbg=245
        hi User7 guifg=#ffff00 guibg=#8a8a8a gui=bold    ctermfg=226 ctermbg=245 cterm=bold
        hi User8 guifg=#8a8a8a guibg=#414243 ctermfg=245 ctermbg=241

        if l:mode ==# 'n'
            hi User3 guifg=#dfff00 ctermfg=190
        elseif l:mode ==# "i"
            hi User2 guifg=#005fff guibg=#FFFFFF ctermfg=27 ctermbg=255
            hi User3 guifg=#FFFFFF ctermfg=255
        elseif l:mode ==# "R"
            hi User2 guifg=#FFFFFF guibg=#df0000 ctermfg=255 ctermbg=160
            hi User3 guifg=#df0000 ctermfg=160
        elseif l:mode ==? "v" || l:mode ==# "^V"
            hi User2 guifg=#4e4e4e guibg=#ffaf00 ctermfg=239 ctermbg=214
            hi User3 guifg=#ffaf00 ctermfg=214
        endif
    endif

    if l:mode ==# "n"
        return " NORMAL "
    elseif l:mode ==# "i"
        return " INSERT "
    elseif l:mode ==# "R"
        return " REPLACE "
    elseif l:mode ==# "v"
        return " VISUAL "
    elseif l:mode ==# "V"
        return " V·LINE "
    elseif l:mode ==# "^V"
        return " V·BLOCK "
    "-------------------- "
    elseif l:mode ==# "c"
        return " COMMAND-LINE "
    elseif l:mode ==# "no"
        return " OPERATOR-PENDING "
    elseif l:mode ==# "Rv"
        return " VIRTUAL REPLACE "
    "-------------------- "
    else
        return l:mode
    endif
endfunction

set statusline=%2*\ %{Mode()}%3*%1*
set statusline+=%#StatusLine#
set statusline+=%{strlen(fugitive#statusline())>0?'\ \ ':''}
set statusline+=%{matchstr(fugitive#statusline(),'(\\zs.*\\ze)')}
set statusline+=%{strlen(fugitive#statusline())>0?'\ \ \ ':'\ '}
set statusline+=%f\ %{&ro?'⭤':''}%{&mod?'+':''}%<
set statusline+=%4*
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%=
set statusline+=%4*
set statusline+=%#StatusLine#
set statusline+=\ %{strlen(&fileformat)>0?&fileformat.'\ \ ':''}
set statusline+=%{strlen(&fileencoding)>0?&fileencoding.'\ \ ':''}
set statusline+=%{strlen(&filetype)>0?&filetype:''}
set statusline+=\ %8*
set statusline+=%7*\ %p%%\
set statusline+=%6*%5*\ \ %l:%c\
" }}}2

" Maven
set makeprg=mvn\ compile\ -q\ -f\ .\pom.xml
set errorformat=\[ERROR]\ %f:[%l\\,%v]\ %m

" turn on filetypes
set nopaste
filetype on
filetype plugin on
filetype indent on
syntax on

NeoBundleCheck

