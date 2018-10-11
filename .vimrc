
"============================================================
" FileName:vim自定义配置文件
" Last Change:2018.10.7
" OS:Ubuntu 18
"============================================================


" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


" 设定默认编码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

set noswapfile 			" 不创建缓存文件
set nocompatible 		" 去掉有关vi一致性模式，避免以前版本的bug和局限"
set tabstop=4			" 设置制表符为4个空格
set number				" 设置行号
set autowrite			" 自动保存
set updatetime=4000		" 4秒自动保存一次
set updatecount=100		" 100字符保存一次

" 设置标尺
set ruler
set rulerformat=%15(%c%V\ %p%%%)

set noerrorbells		" 不让vim发出讨厌的滴滴声
set shortmess=atI		" 启动的时候不显示那个援助索马里儿童的提示 
set cursorline			" 凸显当前行
syntax on				" 自动语法高亮
set magic				" 设置魔术
set smartindent			" 设置自动缩进
set incsearch 			" 输入搜索内容时就显示搜索结果
set hlsearch 			" 搜索时高亮显示被找到的文本
set noerrorbells 		" 关闭错误信息响铃
set laststatus=2 		" 显示状态栏 (默认值为 1, 无法显示状态栏)
set foldenable 			" 开始折叠
set foldmethod=syntax 	" 设置语法折叠
set foldcolumn=0 		" 设置折叠区域的宽度
setlocal foldlevel=1 	" 设置折叠层数为
filetype on 			" 检测文件的类型
set history=1000 		" 记录历史的行数
set background=dark 	" 背景使用黑色
set autoindent 			" vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set ai! 				" 设置自动缩进

"""""""""""""""""
"配置F5运行python3
"""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
	func! CompileRunGcc()
    	exec "w"
        elseif &filetype == 'python3'
        exec "!time python3 %"
endfunc
