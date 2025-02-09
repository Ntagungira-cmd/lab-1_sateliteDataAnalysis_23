#!/bin/bash
# This script extracts data from two CSV files and saves the outputs in an "output" directory.

# Set names of the input CSV files as variables
TEMP="highest_temp.csv"
HUMIDITY="humidity_data_Rwanda.csv"

# Create the output directory
OUTPUT="./insight.csv"
touch "$OUTPUT"

# Check if the input CSV files exist
if [ ! -f "$TEMP" ]; then
    echo "Error: File '$TEMP' not found."
    exit 1
fi

if [ ! -f "$HUMIDITY" ]; then
    echo "Error: File '$HUMIDITY' not found."
    exit 1
fi

# Extract data from highest_temp.csv and the humidity_data_Rwanda.csv
# Concatenate the extracted data and save it in the output directory
(cat "$TEMP"; cat "$HUMIDITY") > "$OUTPUT"

echo "Data extraction complete. Extracted files are saved in the directory: $OUTPUT"
