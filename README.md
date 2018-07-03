# MyVim_For_Ubuntu14.04
This is my .vimrc for ubuntu 18.04 
# plugin install and use
1) 安装插件管理器
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2) vim-airline 配置状态栏
使用苹果字体的状态栏
 git clone https://github.com/inoyatov/monaco.git
 不知道为什么，按照monaco 的说明安装步骤，在此版本的ubuntu 上没有生效？？？？
 可以生效，只是名字改了而已!!!

3)然后选择一种配色方案，选择vim-colors-solarized 插件：
config 已经在 .vimrc 中设置完成，
然后需要搭配使用的要 ls 配色插件，dircolors-solarized ，配置只需要将
cp dircolors.256dark ~/.dircolors
then    source .bashrc 即可
需要 gnome-terminal 的配色插件，gnome-terminal-colors-solarized，config需要
./set_dark.sh 


4) 列出文件夹结构插件  nerdtree ,config 已经在 .vimrc中

5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中5) 通过文件名查找文件插件  ctrlp.vim，config 已经在 .vimrc中

6）快速移动插件  vim-easymotion ,config 已经在 .vimrc中

7) code 搜索插件，the__silver__searcher 
apt-get install silversearcher-ag
config 在 .vimrc 中
8)快速注释插件 nerdcommenter 
config 在 .vimrc 中

9) 类轮廓显示器插件 tagbar,需要安装 ctags 
根据 autotools.rst的步骤，需要安装 
sudo apt-get install autoconf
sudo apt-get install pkg-config
我尝试了 自定义路径，发现不能使用？？？？，目前使用默认的路径；

10）撤销历史可视化插件  undotree
config 已经在 .vimrc 中

11）代码快快捷输入插件 ultisnips 与vim-snippets 
config 已经在 .vimrc中，触发  ctrl+ l

12) 'hello') 类轮廓显示器插件 tagbar,需要安装 ctags 
根据 autotools.rst的步骤，需要安装 
sudo apt-get install autoconf
sudo apt-get install pkg-config
我尝试了 自定义路径，发现不能使用？？？？，目前使用默认的路径；

10）撤销历史可视化插件  undotree
config 已经在 .vimrc 中

11）代码快快捷输入插件 ultisnips 与vim-snippets 
config 已经在 .vimrc中，触发  ctrl+ l

12) 括号对自动生成插件 auto-pairs,不需要配置

13）自动不全框架 deoplete.nvim 目前没有配置成功

14) 使用 补全YouCompleteMe 插件
config 过程按照github 给出的步骤

15) vim-indent-guides 显示缩进等级

16）a.vim  快速转换到对应文件的头文件插件

17） vim-signature 触发，显示，控制标签插件，config  在.vimrc中


