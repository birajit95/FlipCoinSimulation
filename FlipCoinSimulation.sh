#! /bin/bash -x

echo "Welcome to Flip coin simulation program"

flipCoin(){
    
    if [ $(( RANDOM%2 )) -eq 1 ]
    then
        echo "Head"
    else
        echo "Tail"
    fi        
}
flipCoin