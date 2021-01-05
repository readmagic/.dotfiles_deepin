let mapleader = ','
let g:mapleader = ','

" 取消上下左右键的作用
inoremap <Up> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
inoremap <Down> <Nop>
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

" 使用回车打开关闭折叠
nnoremap <CR> za
" 关闭搜索颜色
nnoremap <BackSpace> :nohl<cr>

" 命令行移动
cnoremap <C-h> <Home>
cnoremap <C-l> <End>

" 使用alt q执行宏录制功能
nnoremap <M-q> q
" 去除EX模式
nmap Q <nop>

nmap << <<_
nmap >> >>_

nnoremap ! :!

" 复制到末尾
nnoremap Y y$
nnoremap vv ^vg_
" 复制到系统剪贴板
vnoremap Y "+y

