# Sky Duryee, Keagan (???), Tien Pham

#! /bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: ./brltty.sh <file>"
    exit 1
fi

# name of file
file=$1

# get list of speech drivers
# (our code does not print ViaVoice; Voxin. is this expected?)
echo "Types of speech drivers:"
awk '/#speech-driver/ { print "\t" $2, $3, $4 }' $file

# count number of speech drivers
drivers_count=`grep "#speech-driver" $file | wc -l`
echo "Number of speech drivers: $drivers_count"