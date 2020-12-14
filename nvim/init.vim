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
    "   set hlsearch
    "   set incsearch
    "   set ignorecase
    "   set smartcase
  " }

  " Others {
    set fileformats=unix,dos,mac
    set showcmd
    set hidden
    set backspace=indent,eol,start    " Fix backspace indent
    set mousemodel=popup
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
      Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
      Plug 'kristijanhusak/defx-icons'
      "Plug 'Shougo/unite.vim'
      "Plug 'Shougo/neomru.vim'
      "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
      "Plug 'zchee/deoplete-jedi'
      Plug 'mbbill/undotree'
      "Plug 'scrooloose/nerdtree'
      "Plug 'tpope/vim-commentary'
      "Plug 'airblade/vim-gitgutter'
      "Plug 'tpope/vim-fugitive'

      "Plug 'sheerun/vim-polyglot' " Language packs
      "Plug 'scrooloose/syntastic'
      "Plug 'majutsushi/tagbar'
      "Plug 'bronson/vim-trailing-whitespace'
      Plug 'editorconfig/editorconfig-vim'
      Plug 'Yggdroot/indentLine'
      Plug 'mhinz/vim-startify'
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'

      " Color thems
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
    
    autocmd filetype defx call s:defx_mappings()
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


