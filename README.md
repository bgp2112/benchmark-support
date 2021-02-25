# benchmark-support
tools to support benchmarking


random.sh  

This program will run <num-loops> scripts and select which of three scripts to run each time
based on a percentage for each script
The three percentage inputs must sum to 100
The seed parameter is optional and allows the order of execution to be reproducible

Usage: random.sh script1 script1-percent script2 script2-percent script3 script3-percent num-loops [seed]

For example, the following command line will cause 200 scripts to run in a random order
with a random seed of 4. The scripts will run approximately 10% s1, 30% s2, and 60% s3

random.sh s1 10 s2 30 s3 60 200 4

