# Highridge Construction Company Payment Slips
*BAN6420 Module 1 Assignment*

## Overview
This repository contains Python and R scripts that will be used to facilitate the weekly payments of workers at Highride Construction Company. Both scripts dynamically create a list of 400 workers and generate payment slips for each worker based on specific conditions. Exception handling has also been included to address potential errors.

## Features
 * Dynamically generates a list of 400 workers.
 * Utilizes a for loop to create payment slips for each worker.
 * Implements conditional statements to assign employee levels:
     - If the salary is greater than $10,000 and less than $20,000 it assigns the employee level as "A1."
     - If the salary is greater than $7,500 and less than $30,000 and the employee is female, it sets the employee level as "A5-F."
 * Includes exception handling to address potential errors during payment slip generation.

## Code Explanation
## Creating the Workers List
The Python script uses a *for loop* to generate a list of 400 workers while the R script uses the *data.frame* function to create a data frame containing 400 workers. Each worker has:

A randomly assigned salary between $5000 and $35000.
A randomly assigned gender ('Male' or 'Female').

## Generating Payment Slips
The generate_payment_slips function:

Takes the list of workers as an argument.
Iterates through each worker using a for loop.
Applies conditional statements to determine the employee level.
Uses a *tryCatch* block to handle potential errors.
Prints a payment slip for each worker, including their ID, salary, gender, and employee level.

Generating Payment Slips
The generate_payment_slips function:

Takes the list of workers as an argument.
Iterates through each worker using a for loop.
Applies conditional statements to determine the employee level.
Uses a try-except block to handle potential errors.
Prints a payment slip for each worker, including their ID, salary, gender, and employee level.

## Error Handling
If an error occurs while generating a payment slip, the program will print an error message indicating the employee ID and the error encountered.

## Conclusion
Both the Python and R programs are designed to handle the generation of worker payment slips at Highridge Construction Company, and conditions have been put in place to determine employee levels based on salary and gender. The programs include exception handling to manage any potential errors that may arise during execution.
