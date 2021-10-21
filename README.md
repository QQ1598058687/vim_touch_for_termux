# vim_touch_for_termux

install termux apk :https://f-droid.org/packages/com.termux/

脚本来源:https://github.com/chxuan/vimplus

更改为termux专用


需要移除原先的vim(Need to remove the previously installed vim)

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
default c/cpp env

Change Python3 env

    cd ~/.vim/plugged/YouCompleteMe/
    
    python3 ./install.py

![image](https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/Screenshot_2021-10-21-19-47-50-079_com.termux.png)
    
    
