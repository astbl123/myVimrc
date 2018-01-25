# myVimrc
best vim for linux source code view

前期准备：
1.下载bundle插件管理器：`git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`<br/>
2.安装cscpoe: `sudo apt-get install cscope` <br/>
3.安装ctags:`sudo apt-get install ctags` <br/>
4.把vimrc文件拷贝到 '～/.vim/vimrc'  目录下<br/>
5.安装vim插件：打开vim，在命令模式输入”PluginInstall“就能安装插件。 <br/>


所拥有功能如下：<br/>
1.a.vim ：用F12自动切换.c和.h文件。<br/>
2.taglist.vim ： 开启vim后会在窗口右边显示函数，变量等定义，利用ctrl+w键切换光标区域。<br/>
3.vim-powerline ：显示多彩的状态栏。<br/>
4.winmanager ：可以使用F5键开启文件管理界面（窗口左边显示），上下箭头移动光标，回车键开启文件/文件夹。<br/>
5.ctags ：如果要完善的代码补全则输入`ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .` 或者简单使用前输入'ctags -R'用来建立索引库，这个插件需要自己安装，配置表里面增加了对该插件的支持，在变量或者函数的地方摁下“ctrl+]”键，vim就可以自由跳转到函数/变量定义的地方。<br/>
6,cscope ：该插件要自己安装，建立cscope使用的索引文件在你需要浏览源码的根目录下（如你想用cscope看linux源码)使用下面命令: `cscope -Rbkq`<回车>,配置表里增加了快捷键，在变量/函数的地方摁下“ctrl+shift+-”，然后再摁下“c/g/s”等按键就能对该变量/函数进行搜索。<br/>
7.grep ： 把光标定位到要搜索的文字上面，摁下F3开启搜索功能,然后在命令栏里会自动填上搜索的内容，摁两次回车即可搜索当前目录所有文件是否包含该关键词<br/>
8.SuperTab--Van-Dewoestine: 快速补全功能， 只需要在光标的地方摁下“tab”键，就会补全后面的部分。<br/>
9.syntastic ： 代码错误检查，在浏览内核代码的时候会显示很多错误信息，所以暂时屏蔽了该功能。<br/>
10.vundle : 插件管理器。只需要在vimrc文件里面填入`Plugin 'vim-scripts/taglist.vim'`类似这个格式的安装信息，然后打开vim，在命令模式输入”PluginInstall“就能安装插件。<br/>
11.DoxygenToolkit.vim ： 该插件是方便快捷地用doxygen的格式注释代码。"DoxLic"添加许可，"DoxAuthor"添加作者，"Dox"函数或类的注释,"DoxUndoc"忽略注释里面的代码<br/>
12.echofunc:可以在命令行中提示当前输入函数的原型。这个插件需要tags文件的支持, 并且在创建tags文件的时候要加选项"--fields=+lS"（OmniCppComplete创建的tag文件也能用）, 整个创建tags文件的命令如下:`ctags -R --fields=+lS`,当 你在vim插入(insert)模式下紧接着函数名后输入一个"("的时候, 这个函数的声明就会自动显示在命令行中。如果这个函数有多个声明, 则可以通过按键"Alt+-"和"Alt+="向前和向后翻页, 这个两个键可以通过设置g:EchoFuncKeyNext和g:EchoFuncKeyPrev参数来修改。
