# benchmark-support
tools to support benchmarking


random.sh  

This program will output a list of <num-loops> script names
based on a percentage for each of three scripts
The three percentage inputs must sum to 100
The seed parameter is optional and allows the order of execution to be reproducible

Usage: random.sh script1 script1-percent script2 script2-percent script3 script3-percent num-loops [seed]

For example, the following command line will cause 200 script names to output in a random order
with a random seed of 4. The list of scripts will be approximately 10% s1, 30% s2, and 60% s3

random.sh s1 10 s2 30 s3 60 200 4


