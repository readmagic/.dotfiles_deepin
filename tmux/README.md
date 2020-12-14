.tmux
=====
这份配置文件是fork了[gpakosz](https://github.com/gpakosz/.tmux)之后进行的修改，使用的是fish，所以一些fish不支持的语法比如&&,|| 还有$()我有改动，所以对于用zsh或者bash的可能跑步起来。

简单易用，懒人必备的 `.tmux.conf` 配置文件.

![Screenshot](https://cloud.githubusercontent.com/assets/553208/19740585/85596a5a-9bbf-11e6-8aa1-7c8d9829c008.gif)

安装
------------

必选:

  - tmux **`>= 2.4`**  可以运行在 Linux, Mac, OpenBSD, Cygwin 或者 WSL
  - awk, perl and sed
  -  运行 tmux 之前, `$TERM` 必须设置成 `xterm-256color`

打开终端，执行以下命令: (如果已经有`~/.tmux.conf`，就先要自己备份)

```
$ cd ~
$ git clone https://github.com/readmagic/tmux-config.git .tmux
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .
```

[customize]: #configuration

如果你是Vim用户,可以设置环境变量`$EDITOR` 为`vim` 来开启vi风格的键映射（具体看tmux官方手册）

碰到的问题
---------------
直接去[gpakosz](https://github.com/gpakosz/.tmux)和issue列表搜吧。


映射键位
--------

 - `<prefix> e` 用`$EDITOR`定义的编辑器打开 `~/.tmux.conf.local` (默认是 `vim` )
 - `<prefix> r`  重新加载配置文件
 - `C-l` 清理屏幕和历史记录

 - `<prefix> C-c` 创建一个新的会话[create]
 - `<prefix> C-f` 通过名称切换会话
 - `<prefix> d`   分离当前会话 [dead]
 - `<prefix> s`   列出所有会话 [session]
 - `<prefix> .`   重命名当前会话  

 - `<prefix> |` 垂直分割当前窗格
 - `<prefix> _` 水平分割当前窗格
 - `<prefix> q` 显示窗格编号[query]，按对应数字跳转
 - `<prefix> z` 当前窗格全屏显示，再使用一次会变回原来大小 [zoom]
 - `<prefix> h`, `<prefix> j`, `<prefix> k` and `<prefix> l` 和Vim一样切换窗格
 - `<prefix> H`, `<prefix> J`, `<prefix> K`, `<prefix> L` 修改窗格大小
 - `<prefix> <` and `<prefix> >` 切换窗格位置
  
- `<pefix> c`     创建一个新窗口，状态栏会显示多个窗口的信息[create] 
 - `<prefix> Tab` 切换窗口 
- `<prefix> <number>` 切换到指定编号的窗口，其中的<number>是状态栏上的窗口编号
- `<prefix> w`  从列表中选择窗口 [windows]
- `<prefix> ,` 窗口重命名  
 - `<prefix> m`  开启关闭鼠标魔术
 - `<prefix> Enter` 进入复制模式
 - `<prefix> b` 列出粘贴缓冲区内容
 - `<prefix> p` 从缓冲区顶部粘贴
 - `<prefix> P` 从缓冲区中选择粘贴

另外, `copy-mode-vi` 使用的是 [my own Vim configuration][]

[my own Vim configuration]: https://github.com/gpakosz/.vim.git
