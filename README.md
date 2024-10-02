# tmcc

```sh
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
curl -O https://github.com/notoriginalnik/tmcc/blob/main/tmcc.sh
chmod 0740 tmcc.sh
```

Save the script without the .sh extension in some directory, like `~/bin`.  
Add `~/bin` to your `PATH`, typing `export PATH=$PATH:~/bin`.  
For permanently, add that last line in your `~/.bashrc` or `~/.zshrc`.  
Then run `tmcc` with your arguments anywhere.  

If export the PATH variable in a specific window it won't update in other bash instances.

Change first line `#! /usr/bin/bash` to your needs.