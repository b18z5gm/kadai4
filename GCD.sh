#!/bin/bash

gcd=$1         
d=$2         
remain=1     

until [ $remain == 0 ]
do
   let "remain =$gcd % $d"
   gcd=$d
   d=$remain
done

echo "$gcd"


