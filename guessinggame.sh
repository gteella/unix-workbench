#!/bin/bash

function guess() {

    noOfFiles=0
    local noOfFilesInDirectory=$(ls -1a | wc -l)

    while [[ noOfFiles -ne noOfFilesInDirectory ]]; do
        echo "please enter your guess"
        read guessNo
        if ! [[ $guessNo =~ ^[0-9]+$ ]]; then
            echo "Numbers only please....!"
        else
          if [[ noOfFiles -le noOfFilesInDirectory ]]; then
            echo "you entered too low"
          else
            echo "you entered too high"
          fi
          noOfFiles=guessNo
        fi
    done

}

echo "Guess no of files in the directory"
guess
echo "Congratulations.. you guessed it correctly"