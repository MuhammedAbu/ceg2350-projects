## Lab 05

Lab05 Questions: https://github.com/pattonsgirl/CEG2350/blob/main/Labs/Lab05/README.md

- Name: Muhammed Abushamma
- Email: abushamma.4@wright.edu

## namechange Usage Guide
`!/bin/bash`
 `printhelp () {`
                                  ` echo"Usage: namechange -f find -r replace string to modify `
                                   ` -f The text to find in the filename  -r The replacement text for the new filename"`
                                        ` }`
`while getopts ":hf:r:" opt; do``
`case $opt in`
        h)
                echo "h was given printhelp"
                printhelp
                exit

                ;;

        f) f=$OPTARG


                ;;

        r) r=$OPTARG
                ;;

        \?)     "Invalid option: -$OPTARG" >&2
                      exit 1
                            ;;
        esac
done


`fname=$1`
`if [[ -e $fname ]]; then`
`mv $1 $(echo "$1" | sed -E 's/$f/$r/g')`
`#renames filename given in argument with the` 
`# mv po_ $(echo "po_" | sed 's/o/q/g') example`
else
                      
                          echo "User must provide valid filename"
                        printhelp


                        fi`

## bulkrenamer Usage Guide - Remove if not doing extra credit

Examples of script usage and output. This should be enough info that  
you can hand this and the script to someone not in this course and they  
would be able to understand what your script does and how to use it.

Use good markdown so that this documentation it is pretty and clean on GitHub.
