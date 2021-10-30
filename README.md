# vim_touch_for_termux
install termux apk :https://f-droid.org/packages/com.termux/  
下载termux apk  
脚本来源:https://github.com/chxuan/vimplus

更改为termux专用  
___
# Method 1:
```diff  
@@内置环境:  @@  
@@   python3.10   vim-8.2.3543  new ycm clang-12.0.1  @@  

According to the recovery method of the wiki, directly download the package to recover  
```
https://wiki.termux.com/wiki/Backing_up_Termux  

[download 1 c/cpp environment Backing up](https://drive.google.com/file/d/17g2lZOMrhMyQRGdT2t_HxOB6C-M32rcg/view?usp=sharing "termux.tar.gz")  


 [download 2 Backing up With webssh (Added numpy)]( https://drive.google.com/file/d/18BFhkO4k3PKD0L0LYrgfhvWgICc6iNl1/view?usp=sharing "termux.tar.gz")  
 
 
  Backup package content  
  
<img width="400" height="1300" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/instructions1.png"/> 

```diff
+ Contains openssh, if you use ssh for the first time, follow the figure below. Otherwise skip  
```  

<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh_connect00.png"/> 

```diff 
+  Edit the html file of webssh again. It will be connected and filled automatically, just click to log in.    
+ There are four places to modify in the picture, the fill value after html is opened
```  

<img width="400" height="30" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh_connect01.png"/> 
<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh_connect02.png"/> 

pc Browser  
<img width="600" height="400" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh_connect03.png"/> 

Mobile Browser  
<img width="400" height="350" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh_connect05.png"/> 
___
    
# Method 2: 
```diff 
!During the installation...  
! If the updated package from the official termux source is incomplete,Linking or dependency problems will all be generated during the ycm phase of compiling,Still hope to know
```  
<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/bug.jpg"/> 

```diff
+continue 
```  

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

<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/demo.gif"/>  

___  
可以安装webssh做成内网移动ide
install webssh

    apt update -y
    apt install -y openssh rust
Then in termux input

    ssh-kengen  
Keep pressing enter until the end  
then input

    passwd  
input ssh key  
The input is invisible  
After entering twice in a row

    cat ~/.ssh/id_rsa.pub>>~/.ssh/authorized_keys  
ok  
<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh1.jpg"/>  
<img width="600" height="400" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/webssh2.png"/>  
<img width="600" height="400" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/Mobile%20ide.gif"/>  

___

set theme

    cd ~/.vimplus && chmod +x set_theme.sh &&./set_theme.sh  
During the installation process, the pop-up option

    yes  
Then input

    exit  
ENTER then continue install  
<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/theme%20demo.png"/>  

___

default c/cpp environment  
If python or clang is updated  
Recompile ycm

    cd ~/.vim/plugged/YouCompleteMe
    python3 ./install.py --clang-completer --system-libclang  
  
Change Python3 environment

    cd ~/.vim/plugged/YouCompleteMe/ && python3 ./install.py  
<img width="400" height="600" src="https://github.com/QQ1598058687/vim_touch_for_termux/blob/main/screenshots/python%20completion.png"/>

    vim ~/.vimplus/.vimrc  
add Content

    autocmd FileType python nmap <F5> <Esc>:AsyncRun -mode=term python3 "%"<CR>  
    autocmd FileType python vmap <F5> <Esc>:AsyncRun -mode=term python3 "% "<CR>  
    autocmd FileType python imap <F5> <Esc>:AsyncRun -mode=term python3 "%"<CR>
