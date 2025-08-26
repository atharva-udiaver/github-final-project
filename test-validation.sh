#!/bin/bash
# Test documentation for validation functionality
# This file documents how to test the simple-interest.sh validation features

echo "=== Simple Interest Calculator - Validation Testing Guide ==="
echo
echo "The simple-interest.sh script now includes comprehensive input validation."
echo "To test the validation features, run: ./simple-interest.sh"
echo
echo "=== Test Cases ==="
echo
echo "1. Valid Integer Inputs:"
echo "   Principal: 1000"
echo "   Rate: 5"
echo "   Time: 2"
echo "   Expected Result: Simple Interest = 100"
echo
echo "2. Valid Decimal Inputs:"
echo "   Principal: 1000.50"
echo "   Rate: 5.5"
echo "   Time: 2.5"
echo "   Expected Result: Simple Interest = 137.57"
echo
echo "3. Invalid Inputs (should show error messages):"
echo "   - Non-numeric: 'abc' → Error: must be a valid positive number"
echo "   - Negative: '-5' → Error: must be a valid positive number"
echo "   - Zero: '0' → Error: must be greater than 0"
echo "   - Empty input → Error: cannot be empty"
echo
echo "=== Validation Features Implemented ==="
echo "✓ Empty input validation"
echo "✓ Numeric format validation (integers and decimals)"
echo "✓ Positive value validation"
echo "✓ Support for both integer and decimal calculations"
echo "✓ Clear error messages"
echo "✓ Re-prompting for valid input"
echo
echo "=== Files for Validation ==="
echo "PRIMARY: simple-interest.sh - Contains all validation logic"
echo "BACKUP:  simple-interest-original.sh - Original version without validation"
echo "DEMO:    simple-interest-validated.sh - Development version"
echo "DOC:     test-validation.sh - This testing guide"