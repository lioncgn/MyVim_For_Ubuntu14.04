
""使用vundle 自动安装插件
"""""""""""""""""""""""""""""
"第一步：git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible "be iMproved,required
filetype off "required
"Brief help
":BundleList--列举出列表中配置的所有插件
":BundleInstall---安装列表中所有插件
":BundleInstall!---更新列表中所有插件
":BundleSearch foo---查找foo 插件
":BundleSearch! foo ---刷新foo插件缓存
":BundleClean--清除列表中所有插件
":BundleClean!--清除列表中没有的插件
"see :h vundle for more details or wiki for FAQ
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"alternatively,pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin()

"let Vundle manage Vundle,required
Plugin 'VundleVim/Vundle.vim'

"Keep Plugin commands between vundle#begin/end.
"plugin on GitHub repo
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'powerline/fonts' 
Plugin 'easymotion/vim-easymotion'
Plugin 'ggreer/the_silver_searcher'
Plugin 'mileszs/ack.vim'
"Plugin 'sjl/gundo.vim' "不能使用，还没有找到原因，目前用the_silver_searcher
"代替
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'SirVer/ultisnips'  "代码块引擎
Plugin 'jiangmiao/auto-pairs'
Plugin 'honza/vim-snippets' "代码块集合
"Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/a.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'Valloric/YouCompleteMe' "已经包含supertab，所以不再安装supertab  ，发现与ultisnips tab键有冲突
"All of your Plugins must be added before the following line
"  :help mark-motions 查看如何在文件内及文件之间打mark
call vundle#end() "required
filetype plugin indent on "required
"To ingore plugin indent changes,instead use:

" 定义快捷键的前缀，即<Leader>
let mapleader=";" "mapleader 对所有map映射命令生效，作用将参数<leader> 替换成mapleader变量的值

"set t_Co=256
set laststatus=2 "总是显示状态栏"
set lazyredraw
"使用苹果字体for powerline github链接： https://github.com/inoyatov/monaco.gi
let g:airline_powerline_fonts = 1

"vim-easymotion profile
"默认;;w，搜索单词，行内搜索使用;h or ;l 以及 ;.重复上一个动作用 ;.
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader><leader>w <Plug>(easymotion-word)
"map <Leader><leader>b <Plug>(easymotin-back)
"map <Leader><leader>s <Plug>(easymotion-search)
"map <leader><leader>h <Plug>(easymotion-linebackwrard)
"map <Leader><leader>j <Plug>(easymotion-j)
"map <Leader><leader>k <Plug>(easymotion-k)
"map <Leader><leader>l <Plug>(easymotion-lineforword)
map <Leader>. <Plug>(easymotion-repeat)
"map <Leader>q <Plug>(easymotion-lineforward)  #行内移动
map <Leader>h <Plug>(easymotion-linebackward)

"UltiSnips settings 
let g:UltiSnipsExpandTrigger = '<c-l>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

"下面的设置不加也可以正常工作，同时如果想自定义自己的snippet，可以在~/.vim/UltiSnips下面新建自己的文件
"set runtimepath+=~/.vim/
"let g:UltiSnipsExpandTrigger = '<Tab>'
"let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips' "自定义snippet 寻找路径
"let g:UltiSnipsSnippetDirectories=["UltiSnips"] "到runtimepath 中寻找目录中的snippet
"let g:UltiSnipsUsePythonVersion = 3
"let g:UltiSnipsEditSplit = 'vertical'
"设置切换buffer快捷键
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
""" solarized"""
syntax on  "允许用指定的语法高亮配色方案替换默认方案
let g:solarized_termcolors=256
let g:solarized_termtrans=1
"set background=light
set background=dark
colorscheme solarized
"coloarscheme molokai

"""solarized    "

"a.vim configure
":A 打开对应的头文件， :AS   :AV  垂直方式打开，或者水平方向打开

"vim-signature configure
"m[a-z]  打标签 a-z
"'[a-z] 跳到对应的标签处
"m[space] 取消所有标签
"m?查看标签

"Gundo.vim configured
"nnoremap <F5> :GundoToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

"nerdcommenter 使用， :help nerdcommenter 在normal or visual 下使用
"<leader>ca 选择注释的方式
"<leader>cc 注释当前行，可以指定行数
"<leader>cs a sexy 注释
"<leader>cA 行尾加上注释，并进入insert
"<leader>cu  取消注释

"Tagbar 使用
nmap <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '$HOME/ctags-5.8/ctags'
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化

" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>


"""Nerdtree config""""
let NERDTreeQuitOnOpen=1
map <F2> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene |endif

"""ctrlp config """"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"CtrlPBuffer or CtrlPMRU 进入查找buffer 后者查找MRU文件模式
"<c-f> and <c-b>可以进行切换
"<c-j> and <c-k>上下选择文件
"<c-t> or <c-v> or <c-x> 在新的tab或者新的分割窗口打开选择的文件
"<c-p> 找到之前或者之后查找的字符串
"""""""""""""""""""""""""""""""""""
""""通用设置
"""""""""""""""""""""""""""""""""""
syntax on "语法高亮设置
set number "设置行号 
set hlsearch  "高亮显示搜索结果
set cursorline   "Highlight current line
set cursorcolumn "高亮当前列
"
"set ignorecase "忽略大小写
"set incsearch "开始实时搜索功能
"set ruler "显示光标当前位置
set showcmd
set showtabline=1 "显示标签页
set autoread "文件改动自动载入
autocmd InsertLeave * se nocul "浅色高亮当前行
autocmd InsertEnter * se cul
set history=1000 "记录的命令数目


set lbr "不要单词中断行
set confirm "在处理未保存或只读文件，弹出确认
set iskeyword+=_,$,@,%,#,- "带有如下符号的单词不要换行分割
"set clipboard+=unnamed "与windows 共享剪切板
"set height=2 "命令行高度，默认为1
"set backspace=2 "使回格
set showmatch "高显匹配的括号
set matchtime=5 "匹配高亮的时间（单位是十分之一秒）
"输入:set list命令显示
set scrolloff=3 "光标移动到buffer 的顶部和底部时保持3行距离
"set noexpandtab "不要用空格代替制表符
set smarttab "在行和段开始处使用制表符
autocmd! bufwritepost .vimrc source ~/.vimrc "每次写入.vimrc后，都会执行次命令
"所选代码块对齐的方式：从光标处大写V，大写G,然后＝

set showmode "处于文本输入方式时加量按钮条中的模式指示器
set showcmd "在状态栏显示目前执行的指令，未完成的指令片段也会显示出来
set ws "在搜索到达文件末尾则绕回文件头继续搜索
set wrap "长行显示自动折行

:set fileformats=unix,dos

""""tab键和缩进设置
"set tabstop=4 " 在插入模式下，输入tab键占据的空格数量
"set shiftwidth=4 "通过VIM 命令自动进行缩进处理
"set softtabstop=4 "连续空格转为tab
"通过 执行retab命令，可以让Vim 按照上述规则处理他人的缩进"
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
"set wildmenu                    " Show list instead of just completing
"set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too

highlight clear SignColumn "SignColumn should match background
highlight clear LineNr      "Current line number row will have same background color in relative mode

"清除因为window和linux 下换行符不同造成的 多余字符(ctrl-v + enter或者
"ctrl-v+ctrl-m产
noremap <leader> m :%s//r//g<CR>


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
"za 打开或者关闭折叠，zM 关闭所有折叠，zR 打开所有折叠"



"""python 配置
set encoding=utf8
"set paste   #这个设置让我不能使用映射 map ,同时自动缩进也不能使用
"set expandtab "进行tab和空格的转换 
set noexpandtab "不进行tab 和空格的转换
set shiftwidth=4
set tabstop=4 "决定多少个空格将转换成tab
set softtabstop=4	"决定将tab转换成多少个space

set autoindent
set cindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set ruler
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set clipboard+=unnamed


""""function""""""""""""""
" 自动定位到上次修改的位
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Ack.vim configured 
let g:ackprg='ag --nogroup --nocolor --column'
map <c-u> :Ack<space>
"ag configured
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
"YcmCompleter
let g:ycm_min_num_of_chars_for_completion= 2
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 1
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/personal/.ycm_extra_conf.py'
let g:ycm_complete_in_comments = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_collect_identifiers_from_comments_and_strings = 1
":YcmDebugInfo  查看debuginfo 信息

