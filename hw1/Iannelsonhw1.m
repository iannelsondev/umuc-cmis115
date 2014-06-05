//
//  main.m
//  Homework 1
//  CMIS115
//  Created by Ian Nelson on 6/4/14.
//  Puran Nebhnani
//
//  This application is designed to declare two integer values, and calculate
//  the summation, subtraction, multiplication and division of two integers.
//  Additionally, the program outputs the two integers and the mathematical
//  result of each operation.

// Import core Foundation library.
#import <Foundation/Foundation.h>

/*! Starts the execution of the program
 * \param   argc The count of arguments passed via command line
 * \param   argv An array of the command line arguments
 * \returns      An integer error code defining success (0) or failure (!0)
 */
int main (int argc, const char * argv[])
{
    // Set up memory management scope.
    @autoreleasepool {
        //Declare and initialize an integer.
        int numberOne = 35;
        int numberTwo = 7;
        
        //Add two integers.
        int addition = numberOne + numberTwo;
        
        // Subtract two integers.
        int subtraction = numberOne - numberTwo;
        
        // Divide the two integers.
        int division = numberOne / numberTwo;
        
        // Multiply the two integers.
        int multiplication = numberOne * numberTwo;
        
        // Print a formatted string for the addition of two numbers.
        NSLog(@"The summation of %d and %d is %d", numberOne, numberTwo, addition);
        
        // Print a formatted string for the subtraction of two numbers.
        NSLog(@"The subtraction of %d and %d is %d", numberOne, numberTwo, subtraction);
        
        // Print a formatted string for the multiplication of two numbers.
        NSLog(@"The multiplication of %d and %d is %d", numberOne, numberTwo, multiplication);
        
        // Print a formatted string for the division of two numbers.
        NSLog(@"The division of %d and %d is %d", numberOne, numberTwo, division);
    }
    
    // Exit cleanly with error code.
    return 0;
}