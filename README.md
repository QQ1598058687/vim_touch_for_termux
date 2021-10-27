# vim_touch_for_termux
install termux apk :https://f-droid.org/packages/com.termux/

下载termux apk

脚本来源:https://github.com/chxuan/vimplus

更改为termux专用
内置环境:

python3.10   vim-8.2.3543  new ycm

!需要移除原先的vim(Need to remove the previously installed vim)

一步到位

    git clone https://github.com/QQ1598058687/vim_touch_for_termux.git ~/.vimplus

    cd ~/.vimplus

    ./install.sh

F1:help

F2:exit(vim)

F3:NERDTree

F4:save current file

F5: compile & Run (c/cpp)

过程中请保持网络通畅,耐心等待安装下载相关组件与安装.

![image](https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/demo.gif)
可以安装webssh做成内网移动ide
![image](https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/Mobile%20ide.gif)

set theme

    cd ~/.vimplus && chmod +x set_theme.sh &&./set_theme.sh

During the installation process, the pop-up option 

    yes

Then input 

    exit

ENTER then continue install

![image](https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/Screenshot_2021-10-27-06-12-46-934_com.termux.png)


default c/cpp env

If python or clang is updated

Recompile ycm

        cd ~/.vim/plugged/YouCompleteMe
        
        python3 ./install.py --clang-completer --system-libclang

Change Python3 env

    cd ~/.vim/plugged/YouCompleteMe/ && python3 ./install.py

![image](https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/Screenshot_2021-10-21-19-47-50-079_com.termux.png)

    vim ~/.vimplus/.vimrc

add Content

    autocmd FileType python nmap <F5> <Esc>:AsyncRun -mode=term python3 "%"<CR>
    autocmd FileType python vmap <F5> <Esc>:AsyncRun -mode=term python3 "% "<CR>
    autocmd FileType python imap <F5> <Esc>:AsyncRun -mode=term python3 "%"<CR>
    
    
