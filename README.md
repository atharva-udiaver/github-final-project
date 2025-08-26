# github-final-project

A calculator that calculates simple interest given principal, annual rate of interest and time period in years.

Input:
- p, principal amount
- t, time period in years
- r, annual rate of interest

Output:
- simple interest = p*t*r

## Validation

**The file used for validation is: `simple-interest.sh`**

This script includes comprehensive input validation features:
- ✅ Validates that inputs are not empty
- ✅ Ensures inputs are valid numbers (integers or decimals)
- ✅ Checks that all values are positive (greater than 0)
- ✅ Provides clear error messages for invalid inputs
- ✅ Re-prompts users until valid input is provided

## Files

- `simple-interest.sh` - Main calculator with validation (primary file)
- `simple-interest-original.sh` - Original version without validation (backup)
- `test-validation.sh` - Testing guide and documentation

## Usage

Run the calculator:
```bash
./simple-interest.sh
```

The script will prompt for each input and validate it before proceeding.
