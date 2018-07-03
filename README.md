# MyVim_For_Ubuntu14.04
**This is my .vimrc for ubuntu 18.04**
# plugin install and use
## 1) 安装插件管理器
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vimi `
## 2) vim-airline 配置状态栏
**使用苹果字体的状态栏**  
 `git clone https://github.com/inoyatov/monaco.git `  
按照monaca 中的文档就可以安装，选择此字体时，注意名字已经修改为其他名字

## 3)配色方案插件，选择vim-colors-solarized 插件
config 已经在 .vimrc 中设置完成，然后需要搭配使用的要 ls 配色插件，dircolors-solarized ，配置：  
`cp dircolors.256dark ~/.dircolors`  
`source .bashrc`  
需要 gnome-terminal 的配色插件，gnome-terminal-colors-solarized，config需要  
`./set_dark.sh `

## 4) 列出文件夹结构插件  nerdtree ,config 已经在 .vimrc中

## 5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

## 6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中

## 7) code 搜索插件 the__silver__searcher , config 在 .vimrc 中
需要安装ag  
`sudo apt-get install silversearcher-ag`
## 8)快速注释插件 nerdcommenter ,config 在 .vimrc 中

## 9) 类轮廓显示器插件 tagbar,需要安装 ctags 
根据 autotools.rst的步骤，需要安装  
`sudo apt-get install autoconf`  
`sudo apt-get install pkg-config`  
我尝试了 自定义路径，发现不能使用？？？？，目前使用默认的路径；

## 10）撤销历史可视化插件  undotree,config 已经在 .vimrc 中

## 11）代码块输入插件 ultisnips 与vim-snippets 
config 已经在 .vimrc中，触发  ctrl+ l

## 12) 括号对自动生成插件 auto-pairs,不需要配置

## 13）自动不全框架 deoplete.nvim 目前没有配置成功,使用Youcompleteme 插件代替

## 14) 使用 补全YouCompleteMe 插件
config 过程按照github 给出的步骤

## 15) vim-indent-guides 显示缩进等级

## 16）a.vim  快速转换到对应文件的头文件插件

## 17） vim-signature 触发，显示，控制标签插件，config  在.vimrc中
## 18) markdown 文件插件
**tabular，vim-markdown，vim-instant-markdown**  
其中 vim-instant-markdown 需要按照github中的步骤安装  
`sudo apt-get install nodejs`  
`sudo apt-get install npm`  
`npm -g install instant-markdown-d`  
`sudo apt-get install xdg-utils curl`

