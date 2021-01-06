" 代码补全插件
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" 检索
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
" 注释插件
Plug 'scrooloose/nerdcommenter'
" 主题theme类插件
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
" 顶栏和底栏
Plug 'itchyny/lightline.vim'
" 彩虹括号
Plug 'luochen1990/rainbow'
" 函数列表
Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}
" 自动补全括号
Plug 'jiangmiao/auto-pairs'
" 快速包围
Plug 'tpope/vim-surround'
" 重复上次的动作
Plug 'tpope/vim-repeat'
" 显示清除尾部空格
Plug 'ntpeters/vim-better-whitespace'
" 代码段
Plug 'honza/vim-snippets'
" 快速选择窗口
Plug 't9md/vim-choosewin',  { 'on': 'ChooseWin' }
" 快速移动
Plug 'easymotion/vim-easymotion', {'on':
   \ [
   \ '<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)',
   \ '<Plug>(easymotion-overwin-f2)', '<Plug>(easymotion-bd-jk)',
   \ '<Plug>(easymotion-overwin-line)', '<Plug>(easymotion-bd-w)',
   \ '<Plug>(easymotion-overwin-w)', '<Plug>(easymotion-s)',
   \ ]}
" 驼峰单词移动
Plug 'chaoren/vim-wordmotion'
" 对齐
Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}
" 对齐线
Plug 'Yggdroot/indentLine', {'on': 'IndentLinesEnable'}
" 多光标
Plug 'mg979/vim-visual-multi'
" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" 功能很强的折叠插件, zc zo
Plug 'pseewald/vim-anyfold'
" 起始界面
Plug 'mhinz/vim-startify'
" 平滑滚动
Plug 'psliwka/vim-smoothie'
" 总是匹配tag
Plug 'valloric/MatchTagAlways', {'for': ['html', 'css', 'xml']}
" 显示颜色 例如: #654456
Plug 'norcalli/nvim-colorizer.lua'
" 加强版的 go to file
Plug 'tpope/vim-apathy'
" 查看启动时间
Plug 'dstein64/vim-startuptime', {'on':'StartupTime'}
" 专注阅读
Plug 'junegunn/goyo.vim', { 'on': 'Goyo', 'for': 'markdown' }
\ | Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'markonm/traces.vim'
" 语法检查
Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'md', 'tex']}
" 忘记sudo?使用sudowrite或sw
Plug 'lambdalisue/suda.vim'

" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-sh',
    \ 'coc-yaml',
    \ 'coc-cmake',
    \ 'coc-snippets',
    \ 'coc-clangd',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-word',
    \ 'coc-python',
    \ 'coc-explorer',
    \ 'coc-ci',
    \ 'coc-git',
    \ ]

    " \ 'coc-marketplace',
    " \ 'coc-tsserver',
    " \ 'coc-prettier',
    " \ 'coc-calc',
    " \ 'coc-tabnine',
    " \ 'coc-fzf-preview',
    " \ 'coc-bookmark',
    " \ 'coc-rainbow-fart',
    " \ 'coc-lists',
