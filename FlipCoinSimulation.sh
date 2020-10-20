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


flippingGame(){

    local headCount=0
    local tailCount=0

    while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
    do
      if [ $(flipCoin) == 'Head' ]
      then
          ((headCount++))
      else
          ((tailCount++))
      fi   
    done
    
    if [ $headCount -gt $tailCount ]
    then
       echo "Its win! Head won by " $(( headCount-tailCount ))
    elif [ $headCount -lt $tailCount ]
    then
       echo "Its win! Tail won by " $(( tailCount-headCount ))
    else
       echo "Its a Tie"     
    fi

    
}

flippingGame