#!/bin/bash

# First step, create the directory to store the files.
first="First we are going to create the files and store those in your local machine "
echo="$first"
read -p "Please type the directory where you want to store the files in your local machine, no matter if it doesn't exist, this script will create it for you: " store
Dir="$store"
if [[ ! -d $Dir ]];then
   mkdir $Dir
fi
endfirst="Success!, <"$store"> created/selected."
echo "$endfirst"

# Second step, create 152 files and store those in the directory created/selected
second="Now we are going to create the files and store those in <"$store"> "
echo "$second"
loading="Creating files, please wait.... "
echo "$loading"
for f in {a..z} {A..Z} {0..99}
do 
	echo hello > "$store/$f.txt" 
done
endsecond="Success! 152 files created in <$store>"
echo "$endsecond"


# Third step, copy the files created via scp to a remote host.
third="Everything is looking good!, now we are going to select the target server"
echo "$third"
read -p "Type the user, server/node IP for the scp target server, using this format, <"root@x.x.x.x:">  -" serverip
read -p "Type the absolute path in the scp target server, using this format, <"/root/dir/">  -" apath
target="$serverip$apath"

for REMOTE in "$target"
do
	scp $store/*.txt $REMOTE 
done

endthird="Done, please check your remote directory"
echo "$endthird"
