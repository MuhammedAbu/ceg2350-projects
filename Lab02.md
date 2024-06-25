## Lab 02

Lab02 Questions: https://github.com/pattonsgirl/CEG2350/tree/main/Labs/Lab02

- Name: Muhammed Abushamma
- Email abushamma.4@wright.edu

## Part 1 Answers

The answers for this section are to help you record what steps  
are needed to create a file locally (in your cloned repo)  
and push them (sync) with GitHub

1. Add a file for tracking:
2. mkdir Lab02    
3. cd Lab02     
4. touch Lab02.md  
5. copy and paste LabTemplete into Lab02.md file using vim    
6. git add Lab02.md
7. Commit changes:  git commit , then add a commit message
8. Sync local commits with GitHub: git push

## Part 2 Answers

For each, write the command used or answer the question posed.

1. sudo adduser bob
2. Use "cd /home/bob" to get into bob's home directory. To changes users to bob use "su bob". 
3. As the ubuntu user I cannot add files to bob's home directly due to this user not having the permission to edit any files in bob's directory.
4. To changes users to bob use "su bob". 
5. cd /home/bob
6. Yes, because the user bob has the permission to edit files in bob's home directory.
7. exit
8. cd /home/ubuntu

## Part 3 Answers

For each, write the command used or answer the question posed.

1. sudo addgroup crew
2. sudo usermod -a -G crew bob
3. sudo chgrp crew dirA
4. su bob
5. "cd /home/ubuntu/dirA" then "touch file.txt" 
6. This worked due to the directory being under the group crew, which bob is apart of. Groups are allowed to edit and thus create files under the permissions of dirA.

## Part 4 Answers

For each, write the command used or answer the question posed.

1. "exit" then "cd /home/ubuntu" then " touch sudowho.txt"
2. Both the user and group are allowed to read and write the file but not execute while the other can only read.
3. "vim sudowho.txt" Then added "Hello".   Use "esc :wq" to quit and save changes


## Part 5 Answers

1. `ssh` command before configuring `config` file:  ssh -i 2350key.pem ubuntu@44.210.210.244
2. HostName: 44.210.210.244
3. User: ubuntu
4. IdentityFile: ~/.ssh/2350key.pem
5. `~/.ssh/config` contents:

```
Host 2350
        HostName 44.210.210.244
        User ubuntu
        Port 22
        IdentityFile ~/.ssh/2350key.pem
                                                             
                                                            
```

6. `ssh` command after configuring `config` file: ssh 2350
