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

    count=1
    while [ $count -le 100 ]
    do
      if [ $(flipCoin) == 'Head' ]
      then
          ((headCount++))
      else
          ((tailCount++))
      fi   

      ((count++))

    done

    echo "Head has won $headCount times"

    echo "Tail has won $tailCount times"

   
}

flippingGame