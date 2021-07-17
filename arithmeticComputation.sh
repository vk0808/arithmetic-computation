#! /bin/bash -x

echo "Welcome to Sorting Arithmetic Computation Problem"


# Declare a dictionary
declare -A results


# Declare an array
index=0
declare -a resultsArray


# Read inputs a, b, c
read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c


# Doing arithmetic operation
com1=$(( a + b * c ))
com2=$(( a * b + c ))
com3=$(( c + a / b ))
com4=$(( a % b + c ))



# Store computation results in dictionary
results[computation_1]=$com1
results[computation_2]=$com2
results[computation_3]=$com3
results[computation_4]=$com4


# Assign the dictionary values into array
for key in ${!results[*]}
do
	resultsArray[((index++))]=${results[$key]}
done


# Print results
for key in ${!results[*]}
do
	echo $key: ${results[$key]}
done
