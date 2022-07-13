syntax on

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
set nocompatible
set backspace=indent,eol,start

set nu

" tab 缩进
set tabstop=2 " 设置Tab长度为4空格
set shiftwidth=2 " 设置自动缩进长度为4空格
set softtabstop=2
set autoindent " 继承前一行的缩进方式，适用于多行注释
set expandtab
set smarttab
set smartindent 
set cindent 

set hlsearch
set incsearch
set smartcase
set ignorecase					" ignore case in search

set showmatch

set ruler
set wrap						" 不要自动换行
set gcr=a:block-blinkon0

syntax enable
" 高亮显示当前行/列
set cursorline

let mapleader=";"

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight' 
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on
" 开启语法高亮功能

" 配色方案
syntax enable
set t_Co=256
let g:airline_theme="dark"
" let g:airline_theme="light"
" set background=dark
" set background=light
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
syntax on
"set background=dark

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
map	<F2> <ESC><C-W><C-W>
nmap <Leader>m %

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" vim 自身命令行模式智能补全
set wildmenu

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable


map <F4> <ESC>:NERDTreeToggle<CR>
map <F3> <ESC>:Tagbar<CR>
let g:NERDTreeDirArrows = 1
let g:nerdtree_tabs_autoclose = 0
let g:bufExplorerSplitVertSize = 30
let g:bufExplorerMaxHeight=30
let g:winManagerWindowLayout = "FileExplorer|BufExplorer"
let g:winManagerWidth = 30

"acp
let g:acp_enableAtStartup = 1
let g:acp_completeoptPreview = 0
let g:acp_ignorecaseOption = 1
let g:acp_behaviorKeywordCommand = "\<C-n>"
let g:acp_behaviorKeywordLength = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

