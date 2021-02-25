#!/bin/bash
if [ $# -lt 7 ]; then
        echo ""
        echo "This program will output a list of <num-loops> script names "
        echo "based on a percentage for each of three scripts"
        echo "The three percentage inputs must sum to 100"
        echo "The seed parameter is optional and allows the order of execution to be reproducible"
        echo ""
        echo "Usage: random.sh script1 script1-percent script2 script2-percent script3 script3-percent num-loops [seed]"
        echo ""
        echo "For example, the following command line will cause 200 script names to output in a random order"
        echo "with a random seed of 4. The list of scripts will be approximately 10% s1, 30% s2, and 60% s3"
        echo " "
        echo "random.sh s1 10 s2 30 s3 60 200 4"
        echo ""
        exit 1
fi
# check parameters
# the 7th parameter is the number of iterations
# if there is a 8th parameter, interpret it as the seed
if [ $# -gt 7 ]; then
        RANDOM=$8
fi
script1=$1
script2=$3
script3=$5
perc1=$2
perc2=$4
perc3=$6
iterations=$7

let sum=($perc1 + $perc2 + $perc3)
range1=$perc1
let range2=($range1 + $perc2)

if [ $sum -ne 100 ]; then
        echo "Error: the percentage inputs must sum to 100"
        exit 1
fi
#echo "outputting $iterations script names; $perc1% $script1, $perc2% $script2 $perc3% $script3 "

declare -i index=$iterations
while [ $index -ne 0 ]
do
        randnum=$((1 + $RANDOM % 100))
        #echo "$randnum"
        if [ $randnum -le $range1 ]; then
                echo "$script1"
        elif [ $randnum -le $range2 ]; then
                echo "$script2"
        else
                echo "$script3"
        fi
        index=index-1
done

exit 0


