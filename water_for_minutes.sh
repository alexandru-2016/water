#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Need a single parameter: Number of minutes to water"
	exit 1
fi

echo Watering for number of minutes: $1

./start_water.py

for ((i = 1; i <= $1; i++))
do
	echo -n ". "
	
	sleep 1

	if (( $i % 10 == 0 ))
	then
		echo
		echo "$i minutes passed"
		echo
	fi
done

echo
./stop_water.py
