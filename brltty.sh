# Sky Duryee, Keagan (???), Tien Pham

#! /bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: ./brltty.sh <file>"
    exit 1
fi

# name of file
file=$1

# count number of speech drivers
drivers_count=`grep "#speech-driver" $file | wc -l`
echo "Number of speech drivers: $drivers_count"