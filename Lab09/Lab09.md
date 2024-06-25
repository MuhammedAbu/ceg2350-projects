## Lab 09

- Name: Muhammed Abushamma
- Email: abushamma.4@wright.edu

Lab Questions: https://github.com/pattonsgirl/CEG2350/tree/main/Labs/Lab09

## Part 1 Answers

- Make sure infinity is in your Lab09 folder in GitHub, 
- infinity is a script that runs an infinity while loop. 

## Part 2 Answers

1. Getting started
   - Command to find the PID: `ps au` the terminals will have the command -bash.  `ps ao ppid,pid,command,user,tty,stat` is also a good command for seeing the parent process
   - PID of "Terminal A": 1257
   - PID of "Terminal B": 1348
2. Using `./` to run `infinity` in Terminal B
   - PID of script: 1886
   - Command to kill script: kill 1886
   - Effects of running the script: I cannot use the terminal and no commands will work. Using "kill" terminates the process and allows me to use the terminal again. 
                                    Run kill -l to see all the the signals for kill. Term and hup are also useful commands. 

3. Using `source` to run `infinity` in Terminal B
   - PID of script: 1955
   - Command to kill the script: kill 1955
   - Effects of killing the script: When I killed the script, the parent process as well as the child process was terminated.
4. Running `infinity` as a background job in Terminal B
   - Command to run script in background: `./infinity`  then (ctrl+z) to suspend and `bg [job number]` to run in background. Run `jobs` to see job ID of script.
   - Job ID of script: 1
   - PID of script: 1986
   - Command to kill script via job id: `kill %1` or `kill %[job id]`
   - Effects of exiting terminal: When a process is running in the background, I can still use the terminal normally. If I close the terminal B, the job can no longer run since that process was tied to bash terminal B, so closing the terminal will also terminate all child processes.
   
5. Run `infinity` in a `screen` or `tmux` session
   - Command(s) to run `infinity` in a screen / tmux session: Run `tmux` then  `./infinity`
   - Detach from `screen` / `tmux` session: `Ctrl+B then press D` to detach session, to attach sessions run ` tmux attach-session -t [sessions name]` 
   - Command to show `screen` / `tmux` sessions: `Ctrl+B then press S` when in tmux session to list out all tmux sessions. pstree is also useful to see how many tmux sessions there are.
   - Effects of exiting terminal: Exiting terminal does not affect detached tmux sessions, although a reboot will. 
   - Command / steps to kill the `screen` / `tmux` session: `Ctrl + B then press X` this kills the current tmux session.

## Part 3 Answers

1. `git branch update` to create branch update
2. `git checkout update` to switch to branch update   To see a list of branches run `git branch`
3.  Made some comments into infinity script. 
4. Used `git add update` then `git commit -a -m "new file and branch"` to commit files, and finally `git push --set-upstream origin update`
5. Confirmed? Yes, edits exist in my update branch.
6. `git checkout main` to switch back to main branch
7. `git merge update` to merge update branch with main
8. `git push` to push changes to Github 
9. Confirmed? Yes, update branch has been merged in Github.
10. `git statsu` to find out which branch you are on.
