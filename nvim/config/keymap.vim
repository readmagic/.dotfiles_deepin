let mapleader = ' '
let g:mapleader = ' '
" 取消上下左右键的作用
nnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Right> <Nop>
" L和H移动到行首和行尾
nnoremap L $
nnoremap H ^
vnoremap L $
vnoremap H ^
" ;和:一个作用
nnoremap ; :

" jk 替换 Esc
inoremap jk <Esc>
vnoremap jk <Esc>
" 取消 esc键的作用
inoremap <Esc> <Nop>
"Reselect visual block after indent/outdent.调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv
nnoremap << <gv
nnoremap >> >gv

" 使用回车打开关闭折叠
nnoremap <CR> za
" 关闭搜索颜色
nnoremap <BackSpace> :nohl<cr>

" 命令行移动
cnoremap <c-h> <home>
cnoremap <c-l> <end>

" 插入模式下的一些快捷键
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O

inoremap <c-a> <HOME>
inoremap <c-e> <END>

inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

" 使用alt q执行宏录制功能
nnoremap <M-q> q
" 去除EX模式
nmap Q <nop>

nnoremap ! :!

" 复制到末尾
nnoremap Y y$
nnoremap vv ^vg_
" 复制到系统剪贴板
vnoremap Y "+y
nnoremap P "+p

" 窗口相关快捷键
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
" 分割窗口
nnoremap <c-w>s :rightbelow split <cr>
nnoremap <c-w>v :rightbelow vsplit <cr>
" 关闭窗口
nnoremap <silent> q <esc>:close<cr>
vnoremap <silent> q <esc>:close<cr>
