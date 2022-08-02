#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Need a single parameter: Number of minutes to water"
	exit 1
fi

echo Watering for number of minutes: $1

nohup ./water_for_minutes.sh $1 &> log &
