#!/bin/bash

# Define the directory containing the NetCDF files
directory="subset"

# Count the number of .nc files
num_files=$(find "$directory" -type f -name "*.nc" | wc -l)

# Calculate the total size of the .nc files
total_size=$(find "$directory" -type f -name "*.nc" -exec du -ch {} + | grep total$ | awk '{print $1}')

# Output the results
echo "Number of files: $num_files"
echo "Total size: $total_size"
