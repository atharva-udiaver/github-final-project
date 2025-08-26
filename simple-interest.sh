#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Additional Authors:
# <your GitHub username>

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r

# Validation function to check if input is a positive number
validate_input() {
    local value=$1
    local field_name=$2
    
    # Check if input is empty
    if [[ -z "$value" ]]; then
        echo "Error: $field_name cannot be empty."
        return 1
    fi
    
    # Check if input is a valid number (integer or decimal)
    if ! [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: $field_name must be a valid positive number."
        return 1
    fi
    
    # Check if input is positive (simple comparison for integers)
    if [[ "$value" == "0" ]] || [[ "$value" == "0.0" ]]; then
        echo "Error: $field_name must be greater than 0."
        return 1
    fi
    
    return 0
}

# Function to get validated input
get_validated_input() {
    local prompt=$1
    local field_name=$2
    local input
    
    while true; do
        echo "$prompt"
        read input
        if validate_input "$input" "$field_name"; then
            break
        fi
    done
    echo "$input"
}

# Get validated inputs
echo "Enter the principal:"
read p
while ! validate_input "$p" "Principal amount"; do
    echo "Enter the principal:"
    read p
done

echo "Enter rate of interest per year:"
read r
while ! validate_input "$r" "Rate of interest"; do
    echo "Enter rate of interest per year:"
    read r
done

echo "Enter time period in years:"
read t
while ! validate_input "$t" "Time period"; do
    echo "Enter time period in years:"
    read t
done

# Calculate simple interest - convert to integers for expr if needed
# For simplicity, we'll use the original expr method but with validated inputs
if [[ "$p" == *.* ]] || [[ "$r" == *.* ]] || [[ "$t" == *.* ]]; then
    # If any input has decimals, use awk for calculation
    s=$(awk "BEGIN {printf \"%.2f\", $p * $t * $r / 100}")
else
    # If all inputs are integers, use expr
    s=`expr $p \* $t \* $r / 100`
fi

echo "The simple interest is: "
echo $s