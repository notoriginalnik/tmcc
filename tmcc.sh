#! /usr/bin/bash

if [[ $# -eq 0 ]] || [[ $1 == "--help" ]]; then
echo "Tool for fast operate with permissions.
wrapper for touch+mkdir+chown+chmod
replace 
  touch name && chown user:group name && chmod 777 name
to
  tmcc - user:user 777 name
Or just copy user:group and permissions from parent folder or another file or directory.

tmcc filename                   Create or update file with permissions of parent folder
tmcc filename path              Create or update file with permissions of another file or folder
tmcc -d name                    Create directory with permissions of parent folder
tmcc - user:user 777 name       This is touch+chown+chmod
tmcc -R user:user 777 name      This is mkdir with recursive chown+chmod
"
else

if [[ $# -eq 1 ]]; then
touch $1
export permissions=$(stat -c "%a" .)
chmod $permissions $1
export user1=$(ls -ld ${PWD} | awk '{print $3}')
export group1=$(ls -ld ${PWD} | awk '{print $4}')
chown "$user1:$group1" $1
fi

if [[ $# -eq 2 ]] && [[ $1 != "-d" ]]; then
touch $1
export user1=$(ls -l $2 | awk '{print $3}')
export group1=$(ls -l $2 | awk '{print $4}')
chown "$user1:$group1" $1
export permissions=$(stat -c "%a" $2)
chmod $permissions $1
fi

if [ $1 == "-" ]; then
touch $4
chown $2 $4
chmod $3 $4
fi


if [ $1 == "-R" ]; then
mkdir $4
chown -R $2 $4
chmod -R $3 $4
fi

if [[ $1 == "-d" ]] && [[ $# -eq 2 ]]; then
mkdir $2
export permissions=$(stat -c "%a" .)
chmod $permissions $2
export user1=$(ls -ld ${PWD} | awk '{print $3}')
export group1=$(ls -ld ${PWD} | awk '{print $4}')
chown "$user1:$group1" $2
fi

fi
unset permissions
unset user1
unset group1
