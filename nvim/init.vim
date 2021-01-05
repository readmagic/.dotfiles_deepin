" 初始化一些全局变量
call common#common#init()

" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'

" 载入基础配置
LoadScript base.vim

" vim-plug 载入插件
call plug#begin(get(g:, 'plugins_install_path', '~/.vim/plugin/'))
LoadScript plugin_list.vim
call plug#end()

" 载入快捷键配置
LoadScript keymap.vim
" 载入主题配置
LoadScript theme/theme.vim
LoadScript theme/statusline.vim
LoadScript theme/tabline.vim

" 依据插件名字载入对应的插件配置
function s:source_config(plugName) abort
    let l:config_path = g:plugins_config_root_path . a:plugName . ".vim"
    if filereadable(l:config_path)
        exec 'source' fnameescape(l:config_path)
    endif
endfunction

" TODO 从plug.vim中寻找何时载入插件
" 载入插件配置
for [plugName, _] in items(g:plugs)
    if common#functions#HasInstall(plugName)
        call s:source_config(plugName)
    endif
endfor

" Keyboard 
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

