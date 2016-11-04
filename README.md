# myVimrc
best vim for linux source code view


所拥有功能如下：<br/>
1.a.vim ：用F12自动切换.c和.h文件。<br/>
2.taglist.vim ： 开启vim后会在窗口右边显示函数，变量等定义，利用ctrl+w键切换光标区域。<br/>
3.vim-powerline ：显示多彩的状态栏。<br/>
4.winmanager ：可以使用F5键开启文件管理界面（窗口左边显示），上下箭头移动光标，回车键开启文件/文件夹。<br/>
5.ctags ：这个插件需要自己安装，配置表里面增加了对该插件的支持，在变量或者函数的地方摁下“ctrl+]”键，vim就可以自由跳转到函数/变量定义的地方。<br/>
6,cscope ：该插件要自己安装，配置表里增加了快捷键，在变量/函数的地方摁下“ctrl+shift+-”，然后再摁下“c/g/s”等按键就能对该变量/函数进行搜索。<br/>
7.grep ： 摁F3开启搜索功能。<br/>
8.SuperTab--Van-Dewoestine: 快速补全功能， 只需要在光标的地方摁下“tab”键，就会补全后面的部分。<br/>
9.syntastic ： 代码错误检查，在浏览内核代码的时候会显示很多错误信息，所以暂时屏蔽了该功能。<br/>
10.vundle : 插件管理器。只需要在vimrc文件里面填入"Plugin 'vim-scripts/taglist.vim'“类似这个格式的安装信息，然后打开vim，在命令模式输入”PluginInstall“就能安装插件。<br/>
11.DoxygenToolkit.vim ： 该插件是方便快捷地用doxygen的格式注释代码。<br/>
