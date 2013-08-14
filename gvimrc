syntax on
set nocompatible 
filetype on
filetype indent on
filetype plugin on
set incsearch
set ignorecase smartcase

set backspace=indent,eol,start
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set hlsearch
set listchars=tab:>-,trail:- "make set list show tabs and trailing ws
set laststatus=2
set nostartofline
set ruler
set showcmd
set showmatch
set showmode
set vb
set ai
set si
set sts=4
set shiftwidth=4
set sta
set noet

"make ctrl-k and ctrl-j move up and down on  line wrapped text
noremap <C-J> gj
noremap <C-K> gk

set wildignore=*.o,*.obj,*.bak,*.exe

set dir=/tmp,/var/tmp,~/tmp

set co=108
set lines=64
set viminfo=
set tabpagemax=25

set modeline

"set bg=dark " use when colorscheme macvim
colorscheme monokai

au FileType c,cpp setlocal cinoptions=g0,(0,w1 shiftwidth=4 tabstop=4 tw=82 ai
"au FileType m setlocal cinoptions=g0,(0,w1 shiftwidth=4 tabstop=4 tw=82 ai
au FileType c,cpp setlocal cinkeys+=*<Return>
au FileType rb setlocal shiftwidth=2

" mappings
map Q gq

abbr seperate separate

set guifont=Bitstream\ Vera\ Sans\ Mono:h10
set guitablabel=%t "set label for tab to just file name

"set what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" comment / uncomment selected blocks of text
map gc :call Comment()<CR>
map gC :call Uncomment()<CR>

function! Comment()
    let ft = &filetype
    if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
	silent s/^/\#/
    elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
	silent s:^:\/\/:g
    elseif ft == 'tex'
	silent s:^:%:g
    elseif ft == 'vim'
	silent s:^:\":g
    endif
endfunction

function! Uncomment()
    let ft = &filetype
    if ft == 'php' || ft == 'ruby' || ft == 'sh' || ft == 'make' || ft == 'python' || ft == 'perl'
	silent s/^\#//
    elseif ft == 'javascript' || ft == 'c' || ft == 'cpp' || ft == 'java' || ft == 'objc' || ft == 'scala' || ft == 'go'
	silent s:^\/\/::g
    elseif ft == 'tex'
	silent s:^%::g
    elseif ft == 'vim'
	silent s:^\"::g
    endif
endfunction

" doing ,e will expand to ":e /current/working/directory so that you can just
" type a filename
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
" doing ,cd will change the current working directory to the directory of the
" file you are editing
map ,cd :cd %:p:h <CR>

" map <F8> to toggle taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_Menu = 1
