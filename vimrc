set nocompatible               " Be iMproved

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

"--- Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"-- Recommended to install
"-- After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

"--My Bundles here:
"--
"-- Note: You don't set neobundle setting in .gvimrc!
"-- Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'DoxygenToolkit.vim'
NeoBundle 'gangbo/vim'
"-- vim-scripts repos
NeoBundle 'L9'
NeoBundle 'vim-startify'
"-- Non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
"-- gist repos
"-- Non git repos
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

"---------
filetype indent on
filetype on
syntax on
set wildmenu
set number
set noswapfile
set nobackup
set cursorline
set wrap
set laststatus=2 "底部显示两行
set statusline=\ [File]\ %F%m%r%h\ %w\ \ %h\ \%=[Line]\ %l,%c\ %=\ %P "显示行号
set showcmd
set hlsearch "search 高亮
set incsearch
set ruler

nmap <F5> :tabp<CR>
nmap <F6> :tabn<CR>
set list
set expandtab
set shiftwidth=4 "自动缩进是使用几个空格
set smarttab
"retab 在设定了 expandtab 选项时，该选项会把所有的制表符转换成空格
set listchars=tab:>-,trail:* "显示时,tab用>-代替,结尾的空格用_代替"
set whichwrap=b,s,<,>,[,],h,l "Allow move the cursor left/right to move to the previous/next line 
syntax match Trail " +$"
highlight def link Trail Error
vnoremap " I"<esc> 


" http://www.vivizu.com/vim/Vim-9.html
