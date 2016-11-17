"""""""""""""""""""""""""vundle"""""""""""""""
"call ":PluginInstall" to install plugin""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

"plugin list
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/SuperTab--Van-Dewoestine'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/pathogen.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-plugins/echofunc'

call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""

set tags=tags;




"语法高亮
syntax on

"显示行号
set number

"自动缩进与C语言风格缩进
set autoindent
set cindent

"缩进宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4

"建议开启expandtab选项，
"会自动将tab扩展很空格，代码缩进会更美观
set expandtab
set noexpandtab

"switch case 对齐风格
set cino=g0,:0


"""""""""""""""""Taglist设置""""""""""""""""" 
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口
   
let Tlist_Auto_Open = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
""""""""""""""""""""""""""""""""""""""""""""


"显示行号
set number 
"记录历史的行数
set history=1000
"自动对齐
set autoindent
set cindent   
"智能选择对齐方式
set smartindent 
"tab为4个空格
set tabstop=4 
"当前空行之间交错时使用4个空格
set shiftwidth=4    
"设置匹配模式,输入做括号回u出现右括号
set showmatch    
"编辑时显示光标状态
set ruler    
"快速匹配
set incsearch 



""""""""""""""""""""""cscope设置""""""""""""""""""  
set cscopequickfix=s-,c-,d-,i-,t-,e- 
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
 
set cscopequickfix=s-,c-,d-,i-,t-,e- 
"自动加载cscope
if has("cscope")  
   set csprg=/usr/bin/cscope  
   set csto=0  
   set cst  
   set csverb  
   set cspc=3  
   "add any database in current dir  
   
   if filereadable("cscope.out")  
      cs add cscope.out  
      "else search cscope.out elsewhere  
   else  
      let cscope_file=findfile("cscope.out", ".;")  
      let cscope_pre=matchstr(cscope_file, ".*/")  
      
         if !empty(cscope_file) && filereadable(cscope_file)  
            exe "cs add" cscope_file cscope_pre  
      endif        
   endif  
endif  

""""""""""""""""""""""""""""""""""""""""""cscope end"



""""""""""""a.vim""""""""""""""""""""""""
nnoremap <silent> <F12> :A<CR>




""""""""""""""grep_plugin""""""""""""""""""
nnoremap <silent> <F3> :Grep<CR>

"new-omni-completion(全能补全)
filetype plugin indent on
set completeopt=longest,menu


""""""""""""""super tab_plugin""""""""""""""""""
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni

let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止"




""""""""""""""NERD tree""""""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=25
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>


"pathogen
execute pathogen#infect()


" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


""""""""""power-line"""""""""""""""""""""""""""""
set laststatus=2
"let g:Powerline_symbols='unicode'
"let g:Powerline_colorscheme = 'solarized256'
"let g:Powerline_theme = 'solarized256'
set t_Co=256

"""""""""Doxygen""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Brief  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="BoLong Tan"
"let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with "\<enter>"

"language support 中文显示支持:utf-8,gbk
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
