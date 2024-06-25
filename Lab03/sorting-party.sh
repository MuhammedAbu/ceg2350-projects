#! /bin/bash

 
if [[ [fname].txt ]]; then

	sort $1 | uniq > sorted.txt	
else
	echo "File extension not allowed"
fi
