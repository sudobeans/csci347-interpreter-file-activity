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

# The list of speech driver parameters (Missing driver:name=value,...) (It don't exist)
echo " "
echo "Types of speech parameters:"
awk '/#speech-parameter/ {$1=""; print}' $file

# The list of keyboard-tables (Missing off # no keyboard table) (It don't exist)
echo " "
echo "Types of keyboard tables:"
awk '/#keyboard-table/ {$1=""; print}' $file