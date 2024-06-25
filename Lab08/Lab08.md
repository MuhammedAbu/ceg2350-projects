## Lab 08

- Name: Muhammed Abushamma
- Email: abushamma.4@wright.edu

Lab 08 Questions: https://github.com/pattonsgirl/CEG2350/tree/main/Labs/Lab08

## Part 1 Answers

1. xvda
2. Yes, xvdb
3. `gdisk` main menu options
   - `p` prints partition table 
   - `o` create a new empty GUID partition table (GPT)
   - `n` add a new partition
   - `i` show detailed information on a partition
   - `w` write table to disk and exit
4. Using the `gdisk` utility on the disk: Used o, n, i, and w commands to configure disk with desired specifications.
5. sudo mkfs.ext4 /dev/xvdb1
6. sudo mkdir expanse
7. sudo mount /dev/xvdb1 /mnt/expanse
8. Skip - trust you to do it ;)
9. sudo strings /dev/xvdb1
10. The outputs are the same as when I ran strings before deleting some files.
11. sudo shred -zvu -n 3 test.txt | shred overwrites a file to hide its contents, and can optionally delete it as well. | Some options for shred: -z adds a final overwrite with zeros to hide shredding,
-v enables display of operation progress,
-u truncates and removes file after overwriting,
-n specifies number of times to overwrite file content (the default is 3),
12. sudo umount /dev/xvdb1 | The files and folders are still there but I can not interact with them and all the files are empty.

## Part 2 Answers

1. Created file named original.txt in Lab08 folder with some text.
2. For `original.txt` identify: 
   - Command to find the following info about `original.txt`:  | stat orginal.txt
   - inode number of `original.txt`: 514313
   - number of blocks storing `original.txt`: 8 
   - number of links to `original.txt`: 1
3. Command to create a hard link to `original.txt`: | ln /home/ubuntu/ceg2350-MuhammedAbu/Lab08/original.txt original2.txt
   - What identifiers indicate a hard link was created?  | Using stat original.txt shows that it has 2 links.
   - Does modifying the hard linked file modify `original.txt`? Explain: | Yes, modifying  either orginal.txt or original2.txt will change the other because they are hard-linked.
4. Command to create a symbolic link to `original.txt` | ln --symbolic /home/ubuntu/ceg2350-MuhammedAbu/Lab08/original.txt original3.txt
   - What identifiers indicate a symbolic link was created? | Using stat original3.txt, it has its own inode but points to the inode of the linked file.
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain: | Yes, the sym link would still work but the contents in either file would be lost, although the hard-linked file would be unaffected.
5. Command to create a copy of `original.txt: cp original.txt test.txt | copies original.txt to a new file test.txt in same directory.
   - Does modifying the copied file modify `original.txt`? Explain: | No, the copied file is a separate file with its own unique inode and block.
6. Command to move `original.txt` to another directory. | mv original.txt /home/ubuntu/ceg2350-MuhammedAbu/
   - Does it have the same inode? Explain, | Yes, it has the same inode since its still the same file just in a different folder,
   - Was the hard link you created affected? | Explain No, the hard linked file is unaffected.
   - Was the symbolic link you created affected?  | Explain Yes, the sym linked files were affected and I cannot interact with them.

Extra Credit: 

1.  sudo cp fstab fstab.bak
2.   " UUID="59ec974e-534e-4a0c-8eec-346888564069"     /mnt/expanse    ext4     defaults,discard 0 0 "               added to /etc/fstab
3.   Used sudo mount -a to mount all, and checked df to see if it mounted and xvdb1 was mounted to /mnt/expanse.

Line added to `/etc/fstab`:

```
UUID="59ec974e-534e-4a0c-8eec-346888564069"     /mnt/expanse    ext4      defaults,discard 0 0
```
