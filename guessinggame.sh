#!/bin/bash

function guess() {

    noOfFiles=0
    local noOfFilesInDirectory=$(ls -1 | wc -l)

    while [[ noOfFiles -ne noOfFilesInDirectory ]]; do
        echo "please enter your guess"
        read guessNo
        noOfFiles=guessNo
        if [[ noOfFiles -le noOfFilesInDirectory ]]; then
            echo "you entered too low"
        else
            echo "you entered too high"
        fi
    done

}

echo "Guess no of files in the directory"
guess
echo "Congratulations.. you guessed it correctly"