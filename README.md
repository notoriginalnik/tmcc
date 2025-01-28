# tmcc

```sh
./tmcc.sh
Tool for fast operate with permissions.
 wrapper for touch+mkdir+chown+chmod
 replace
   touch name && chown user:group name && chmod 777 name
 to
   tmcc - user:user 777 name
 Or just copy user:group and permissions from parent folder or another file or directory.

tmcc filename                   Create or update file with permissions of parent folder
tmcc filename path              Create or update file with permissions of another file or folder
tmcc -d name                    Create directory with permissions of parentfolder
tmcc - user:user 777 name       This is touch+chown+chmod
tmcc -R user:user 777 name      This is mkdir with recursive chown+chmod
```

## install

```sh
curl -O https://raw.githubusercontent.com/notoriginalnik/tmcc/refs/heads/main/tmcc.sh
chmod 0740 tmcc.sh
```

Save the script without the .sh extension in some directory, like `~/bin`.  
Add `~/bin` to your `PATH`, typing `export PATH=$PATH:~/bin`.  
For permanently, add that last line in your `~/.bashrc` or `~/.zshrc`.  
Then run `tmcc` with your arguments anywhere.  

If export the PATH variable in a specific window it won't update in other bash instances.

Change first line `#! /usr/bin/bash` to your needs `which bash`.


## links for understand bash

https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/  
https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script  
https://linuxhandbook.com/bash-variables/  
https://stackoverflow.com/questions/12262696/using-unset-vs-setting-a-variable-to-empty  
https://unix.stackexchange.com/questions/7730/find-the-owner-of-a-directory-or-file-but-only-return-that-and-nothing-else  
https://stackoverflow.com/questions/17542892/how-to-get-the-last-character-of-a-string-in-a-shell  
https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html  
https://techrocks.ru/2019/01/21/bash-if-statements-tips/  