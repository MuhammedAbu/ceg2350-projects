Lab 04

Lab Questions: https://github.com/pattonsgirl/CEG2350/blob/main/Labs/Lab04/README.md

- Name: Muhammed Abushamma
- Email: abushamma.4@wright.edu

## Part 1 Answers

1. ` grep -P x'[[:digit:]]{4}' grepdata.txt `                          [[:digit:]] searches for any digit 0-9 while {4} repeats it 4 times
2. `grep -iE ca grepdata.txt`                                          -i ignores case distinctions 
3. `grep -E .@. grepdata.txt `
4. ` grep -E '[[:digit:]]{1,2}, +[^0-1][[:digit:]]{3}' grepdata.txt`    {1,2} repeats it either 1 or 2 times, depending on the amount of numbers. [^0-1] searches for                                                                             any number excluding 0 and 1.                                                                  
## Part 2 Answers
    Format for sed (substitution): sed -i 's/SEARCH_REGEX/REPLACEMENT/g' INPUTFILE
 -i option tells sed to edit files in place. If an extension is supplied (ex -i.bak), a backup of the original file is created.  s is for substition and g is a flag meanin globally, which subtitutes searched pattern with replacement in the entire string, rather than the first insatnce the searched pattern is found.

1. ` sed 's|</[^>]*>||g' sedfile.html `        replaces any html end tag (</stuff>), [^>] represents any charcater except >, and * repeats that as many times as needed. To find and replace a string that contains the delimiter character, use the vertical bar (|) or colon (:) to escape the slash. -i saves changes to file and adding an extension (ex. -i.bac) makes a backup file of the original to file.bac.
2. ` sed -i "s/<li>/- /g" sedfile.html  `                          
3. ` sed -i 's/<h1>/# /g' sedfile.html `          
4. ` sed -i 's/<h2>/## /g' sedfile.html `          
5.  ` sed -i 's/<ul>//g' sedfile.html  `            
6.   `sed -i 's/Batches/Matches/g' sedfile.html`   

## Part 3 Answers
Format for awk: awk '/regex pattern/ { action }' filename
1. ` awk '/Bil/ { print $1 }' records.txt ` 
2.  ` awk '/ 42 / { print $3 }' records.txt `
3.  ` awk '/wright.edu/ { print $2",", $1":", $3 }' records.txt `
4.   ` awk '/wright.edu && 1234/ { print $2, "favorite number is:", $4 }' records.txt ` 
5.   ` awk '{gsub($6,"N0T@PL@!NP@$$W0RD",$6); print$0}' records.txt > updaterecords.txt ` 
