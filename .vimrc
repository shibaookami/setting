syntax on
 
set ts=2 sw=2 sts=0
set expandtab
set mouse=
set hlsearch
set backup
set smartindent
set matchpairs+=<:>
set matchtime=15
set title
set showmatch
set wildmenu
set ruler
set backspace=2
set laststatus=2
set foldmethod=marker
set number

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=euc-jp,utf-8

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

highlight ZSPACE cterm=underline ctermfg=lightblue guibg=white
match  ZSPACE /　/

let dir = strftime("~/.bkup/vim/%Y/%m/%d", localtime())
  if !isdirectory(dir)
    let retval = system("mkdir -p ".dir)
  endif
  exe "set backupdir=".dir
unlet dir
