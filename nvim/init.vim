let mapleader=" "

"" Basic {
  " Dir {
    " set undodir=~/.undo//
    " set undofile
    " set nobackup
    " set noswapfile
    " set backupdir=~/.backup//
    " set backupext=~bk
    " set writebackup
    " set directory=~/.swp//
  " }

  " Encoding {
    set encoding=utf-8
    set fileencoding=utf-8
    set fileencodings=utf-8
  " }

  " Tabs {
    set tabstop=4
    set softtabstop=0
    set shiftwidth=4
    set expandtab
    set autoindent
  " }


  " Search {
       set hlsearch
       set incsearch
       set ignorecase
       set smartcase
  " }

  " Others {
    set ffs=unix,dos,mac
    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    set termencoding=utf-8
    set formatoptions+=m
    set formatoptions+=B
    set showcmd
    set hidden
    set backspace=indent,eol,start    " Fix backspace indent
    set mousemodel=popup
    " filetype
    filetype on
    " Enable filetype plugins
    filetype plugin on
    filetype indent on
  " }

"" }

"" Visual {
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  " Basic {
    set nolinebreak               " don't wrap at words, messes up copying
    set visualbell
    set wildmode=longest,list,full
    set wildmenu
    set numberwidth=3        " minimun width to use for the number column.
  " }

  " Syntax {
    syntax on
    syntax enable
  " }

  " Cursor {
    set ruler
    set number
    set cursorline
    set scrolloff=3
  "}

  " Tab {
    set list                      " Show tabs differently
    set listchars=tab:>-          " Use >--- for tabs
  " }

  " Use modeline overrides
  set modeline
  set modelines=10

  " Status {
    set title
    set titleold="Terminal"
    set titlestring=%F
    set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (L\ %l\/%L,\ C\ %c)
  " }
""}

"" Key-mapping {
  " Abbreviations {
    inoremap <Up> <Nop>
    nnoremap <Up> <Nop>
    nnoremap <Down> <Nop>
    inoremap <Down> <Nop>
    nnoremap <Left> <Nop>
    inoremap <Left> <Nop>
    nnoremap <Right> <Nop>
    inoremap <Right> <Nop>
    nnoremap L $
    nnoremap H ^
    vnoremap L $
    vnoremap H ^
    nnoremap ; :

    " Copy to system clipboard
    noremap <Leader>y "*y
    noremap <Leader>p "*p
    vnoremap Y "+y
    " jk 替换 Esc
    inoremap jk <Esc>
    "Reselect visual block after indent/outdent.调整缩进后自动选中，方便再次操作
    vnoremap < <gv
    vnoremap > >gv
    " save
    cmap w!! w !sudo tee >/dev/null %
    "markdown 
    nmap <C-s> <Plug>MarkdownPreview
    nmap <M-s> <Plug>MarkdownPreviewStop
    nmap <C-p> <Plug>MarkdownPreviewToggle
  "   cnoreabbrev W! w!
  "   cnoreabbrev Q! q!
  "   cnoreabbrev Qall! qall!
  "   cnoreabbrev Wq wq
  "   cnoreabbrev Wa wa
  "   cnoreabbrev wQ wq
  "   cnoreabbrev WQ wq
  "   cnoreabbrev W w
  "   cnoreabbrev Q q
  "   cnoreabbrev Qall qall
  "}

"" }

"" Plugins {
  let s:vim_plug_dir=expand('~/.config/nvim/autoload')
  " Vim-Plug {
    "if !filereadable(s:vim_plug_dir.'/plug.vim')
    "  execute '!wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P '.s:vim_plug_dir
    "  let s:install_plug=1
    "endif

    call plug#begin('~/.config/nvim/plugged')
      " 文件树
      Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
      Plug 'kristijanhusak/defx-icons'
      "Plug 'Shougo/unite.vim'
      "Plug 'Shougo/neomru.vim'
      "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
      "Plug 'zchee/deoplete-jedi'
      "Plug 'mbbill/undotree'
      "Plug 'scrooloose/nerdtree'
      "Plug 'tpope/vim-commentary'
      "Plug 'airblade/vim-gitgutter'
      "Plug 'tpope/vim-fugitive'

      "Plug 'sheerun/vim-polyglot' " Language packs
      "Plug 'scrooloose/syntastic'
      "Plug 'majutsushi/tagbar'
      "Plug 'bronson/vim-trailing-whitespace'
      "Plug 'editorconfig/editorconfig-vim'
      "Plug 'Yggdroot/indentLine'
      " 启动VIM快速导航
      Plug 'mhinz/vim-startify'
      " 底部状态增强/美化 
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      " COC智能补全
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      "Markdown 
      Plug 'godlygeek/tabular'
      Plug 'plasticboy/vim-markdown'
      Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

      " 主题插件
      Plug 'w0ng/vim-hybrid'
      Plug 'morhetz/gruvbox'

    call plug#end()

    "if exists('s:install_plug')
    "  augroup PlugInstall
    "    au!
    "    au VimEnter * PlugInstall
    "  augroup END
    "endif
  " }

  " Color-thems {
      colorscheme pablo  
      set background=dark
  " }
  " Makdown {
        " set to 1, nvim will open the preview window after entering the markdown buffer
        " default: 0
        let g:mkdp_auto_start = 0

        " set to 1, the nvim will auto close current preview window when change
        " from markdown buffer to another buffer
        " default: 1
        let g:mkdp_auto_close = 1

        " set to 1, the vim will refresh markdown when save the buffer or
        " leave from insert mode, default 0 is auto refresh markdown as you edit or
        " move the cursor
        " default: 0
        let g:mkdp_refresh_slow = 0

        " set to 1, the MarkdownPreview command can be use for all files,
        " by default it can be use in markdown file
        " default: 0
        let g:mkdp_command_for_global = 0

        " set to 1, preview server available to others in your network
        " by default, the server listens on localhost (127.0.0.1)
        " default: 0
        let g:mkdp_open_to_the_world = 0

        " use custom IP to open preview page
        " useful when you work in remote vim and preview on local browser
        " more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
        " default empty
        let g:mkdp_open_ip = ''

        " specify browser to open preview page
        " default: ''
        let g:mkdp_browser = ''

        " set to 1, echo preview page url in command line when open preview page
        " default is 0
        let g:mkdp_echo_preview_url = 0

        " a custom vim function name to open preview page
        " this function will receive url as param
        " default is empty
        let g:mkdp_browserfunc = ''

        " options for markdown render
        " mkit: markdown-it options for render
        " katex: katex options for math
        " uml: markdown-it-plantuml options
        " maid: mermaid options
        " disable_sync_scroll: if disable sync scroll, default 0
        " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
        "   middle: mean the cursor position alway show at the middle of the preview page
        "   top: mean the vim top viewport alway show at the top of the preview page
        "   relative: mean the cursor position alway show at the relative positon of the preview page
        " hide_yaml_meta: if hide yaml metadata, default is 1
        " sequence_diagrams: js-sequence-diagrams options
        " content_editable: if enable content editable for preview page, default: v:false
        " disable_filename: if disable filename header for preview page, default: 0
        let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false,
            \ 'disable_filename': 0
            \ }

        " use a custom markdown style must be absolute path
        " like '/Users/username/markdown.css' or expand('~/markdown.css')
        let g:mkdp_markdown_css = ''

        " use a custom highlight style must absolute path
        " like '/Users/username/highlight.css' or expand('~/highlight.css')
        let g:mkdp_highlight_css = ''

        " use a custom port to start server or random for empty
        let g:mkdp_port = ''

        " preview page title
        " ${name} will be replace with the file name
        let g:mkdp_page_title = '「${name}」'

        " recognized filetypes
        " these filetypes will have MarkdownPreview... commands
        let g:mkdp_filetypes = ['markdown']
  " }

  "Defx {
    " 使用 ;e 切换显示文件浏览，使用 ;a 查找到当前文件位置
    let g:maplocalleader=';'
    nnoremap <silent> <localleader>e :Defx -resume -toggle -buffer-name=tab`tabpagenr()`<cr>
    nnoremap <silent> <localleader>a :Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<cr>
    
    function! s:defx_mappings() abort
        	" defx window keyboard mappings
        	setlocal signcolumn=no
        	" 使用回车打开文件
        	nnoremap <silent><buffer><expr> <cr> defx#do_action('multi', ['drop'])
    endfunction

    call defx#custom#option('_', {
    	\ 'columns': 'indent:git:icons:filename',
    	\ 'winwidth': 25,
    	\ 'split': 'vertical',
    	\ 'direction': 'topleft',
    	\ 'listed': 1,
    	\ 'show_ignored_files': 0,
    	\ 'root_marker': '≡ ',
    	\ 'ignored_files':
    	\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
    	\   . ',__pycache__,.sass-cache,*.egg-info,.ds_store,*.pyc,*.swp'
    	\ })
    
    autocmd  filetype defx call s:defx_mappings()
  "}
  " NERDTree {
      " set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
      " let g:NERDTreeChDirMode=2
      " let NERDTreeShowHidden=1
      " let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
      "let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
      " let g:NERDTreeShowBookmarks=1
      " let g:nerdtree_tabs_focus_on_files=1
      " let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
      " let g:NERDTreeWinSize=30

      " NERDTree KeyMapping
      " Locate current file in file systems
      " nnoremap <silent> <Leader>l :NERDTreeFind<CR>
      " noremap <F2> :NERDTreeToggle<CR>
      " Close NERDTree if no other window open
      " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " }

  " vim-commentray {
      " to support other file type
      " autocmd FileType apache setlocal commentstring=#\ %s
  " }

  " fugitive-git {
    " noremap <Leader>ga :Gwrite<CR>
    " noremap <Leader>gc :Gcommit<CR>
    " noremap <Leader>gsh :Gpush<CR>
    " noremap <Leader>gll :Gpull<CR>
    " noremap <Leader>gs :Gstatus<CR>
    " noremap <Leader>gb :Gblame<CR>
    " noremap <Leader>gd :Gvdiff<CR>
    " noremap <Leader>gr :Gremove<CR>
  " }


  " deoplete {
    " let g:deoplete#enable_at_startup = 1
    " let g:deoplete#enable_smart_case = 1
    " deoplete tab-complete
    " inoremap <expr><tab> pumvisible() ? "\<c-n>" :"\<tab>"
  " }

"" }

""{ keyboard 
    " 解决在插入模式下输入中文，然后进入命令行模式，中文可以自动切换回英文
        let g:input_toggle = 0
        function! Fcitx2en()
           let s:input_status = system("fcitx-remote")
           if s:input_status == 2
              let g:input_toggle = 1
              let l:a = system("fcitx-remote -c")
           endif
        endfunction
        
        function! Fcitx2zh()
           let s:input_status = system("fcitx-remote")
           if s:input_status != 2 && g:input_toggle == 1
              let l:a = system("fcitx-remote -o")
              let g:input_toggle = 0
           endif
        endfunction
        
        set timeoutlen=150
        autocmd InsertLeave * call Fcitx2en()
        autocmd InsertEnter * call Fcitx2zh()
""}


