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

## Generating the Workers List
For Python, I have created a list of 400 workers with each worker being represented as a dictionary with id, salary, and gender. 
The salary is a random integer between $5000 and $30000.
The gender is randomly chosen to be either 'Male' or 'Female'.

For R, I used a for loop to create a list of 400 workers with each worker being represented as a list with id, salary, and gender.
The salary is a random integer between $5000 and $30000 using the *sample function*.
The gender is randomly chosen to be either 'Male' or 'Female' using the *sample function*.

## Generating Payment Slips
I used the for loop to iterate through each worker in the list, and also extracted the employee_id, salary, and gender from each worker.
An employee_level was assigned based on the given conditions of salary range and gender. After ensuring that every criteria has been put into consideration, I went ahead to generate and print a payment slip for each worker, showing the employee ID, salary, gender, and employee level.

## Exception Handling
If an error occurs while generating a payment slip, the program will print an error message indicating the employee ID and the error encountered.
A *try-except* block has been used in the Python script, while a *tryCatch* block has been used in the R script to catch and print any errors that occur during the processing of each worker.

## Conclusion
Both the Python and R programs are designed to handle the generation of worker payment slips at Highridge Construction Company, and conditions have been put in place to determine employee levels based on salary and gender. The programs include exception handling to manage any potential errors that may arise during execution.
