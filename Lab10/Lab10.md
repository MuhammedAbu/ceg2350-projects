## Lab 10

- Name: Muhammed Abushamma
- Email: Abushamma.4@wright.edu

Lab Questions: https://github.com/pattonsgirl/CEG2350/tree/main/Labs/Lab10

## Part 1 Answers

- Notes: Run 'sudo apt install "compiler"' to install compiler version. Ex. `sudo apt install openjdk-17-jdk` 
- Notes: Run 'compiler --version' to see current version of program compiler on system. Ex: `java --version`
- Notes: Run 'file "filename' to see information about file (type of  file, version, etc.). Ex: `file demo.class` 


- Added java source code to Lab 10 Github folder.

## Part 2 Answers

1. Compiler: `javac`
   - Location: `/usr/bin/javac` used whereis javac
   - Version:  `openjdk 17.0.5` used java --version
2. Command to compile: `javac repeat.java` -Running this will create the compiled file 'repeat.class'
3. Command to run: `java repeat`

- Notes: To see more info about other compilers and how to use them see "CEG2350 Lab 12 slides".

- Notes: Example for c code:
   - Compiler: `gcc`
   - Command to compile: `gcc -Wall -o repeat repeat.c` -Wall is a flag that shows all warning, -o outputs it to the given filename, and repeat.c is the source code.
   - Command to run: `./repeat`

- Add your compiled code to your Lab10 folder in GitHub - added

## Part 3 Answers

- Add your Makefile to your Lab10 folder in GitHub -added
- Made Makefile-C file and want to want ignore it for tracking with git.
   - Use `vim .gitignore` and then add Makefile-C to file. This will ignore it for tracking to github. 
   - Remove Makefile-C from .gitignore for it to be tracked again. 
   - And use `git add .` to add all files in directory for tracking, then git -a -m "commit message" to commit all files. 
   - Finally use `git push` to push changed to github.
   

## Extra Credit - Dependent Answers - Delete the section if not doing :)

- In the `ec` folder, add your: - added
  - source code files
  - your compiled code
  - `Makefile`

## Extra Credit - G@M3RS Answers - Delete the section if not doing :)

### Instructions to Install ninvaders

1. Download the package from `https://github.com/pattonsgirl/Fall2021-CEG2350/raw/main/Labs/Lab09/ninvaders-0.1.1.tar.gz`

```
wget https://github.com/pattonsgirl/Fall2021-CEG2350/raw/main/Labs/Lab09/ninvaders-0.1.1.tar.gz
```

2. Extract to your home directory:


```
tar -xvf ninvaders-0.1.1.tar.gz
```

3. Install gcc and ncurses library:

```
sudo apt-get install libncurses5-dev libncursesw5-dev
```
- gcc library already installed


4. Compile ninvaders

```
make
```

5. Play ninvaders

```
./ninvaders
```
