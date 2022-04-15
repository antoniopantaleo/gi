#!/bin/bash

###################################################################
#Script Name	:   Git Ignore
#Description	:   Creates .gitignore file   
#Args           :   Presets keywords (previously found with gif command)
#Author       	:   Antonio Pantaleo
#Email         	:   antonio_pantaleo@icloud.com
###################################################################

FILENAME=".gitignore"
URL="https://www.toptal.com/developers/gitignore/api/"

if [ $# -eq 0 ]
then
    echo "Please provide an input"
    exit
fi

QUERY=$(echo $@ | sed s/" "/,/g)

if [ -f $FILENAME ]
then
    while true
    do
        echo "A $FILENAME file already exists"
        read -p "What do you want to do? (R)eplace, (A)ppend, (C)ancel: " ANSWER
        case $ANSWER in
            [rR] | [rR]eplace)
                curl -s $URL$QUERY > $FILENAME
                echo "✅ .gitignore succesfully replaced!"
                break ;;
            [aA] | [aA]ppend)
                curl -s $URL$QUERY >> $FILENAME
                echo "✅ .gitignore succesfully updated!"
                break ;;
            [cC] | [cC]ancel)
                break ;;
            *)
                echo "Please insert a valid input" ;;
        esac
    done
else
    curl -s $URL$QUERY > $FILENAME
    echo "✅ .gitignore succesfully created!"
fi
