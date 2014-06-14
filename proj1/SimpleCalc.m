//
//  Ian Nelson
//  CMIS115
//  Project 1 - SimpleCalc.m
//  Puran Nebhnani
//

// Include Foundation classes.
#import <Foundation/Foundation.h>

/**
  Class representing a simple calculator to store two integers, and methods for addition and subtraction
 */
@interface SimpleCalc: NSObject

// Assigning getter and setter functions for integer properties.
@property (getter=getFirst,setter=setFirst:)int first;
@property (getter=getSecond,setter=setSecond:)int second;

/**
  Initialize a new SimpleCalc object
 */
-(id)init;

@end

/**
 * Class methods
 */
@implementation SimpleCalc

// Synthesize the properties for getters and setters.
// While synthesizing the properties would automatically
// create the 'first' and 'setFirst' methods, these
// were reassigned 'getFirst' and 'setFirst' to comply
// with the directions for Project 1.
@synthesize first = _first;
@synthesize second = _second;

/**
 * Default constructor
 * @returns New initialized object
 */
-(id)init {
    if( self = [super init] )
    {
        // Set the first and second integers to
        // zero by default.
        _first = 0;
        _second = 0;
    }
    
    // Return the instance of the object.
    return self;
}

/**
 * Sets the first number.
 * @param firstNumber   First integer

 */
-(void) setFirst: (int) firstNumber {
    // Alias the passed integer to the internal value
    _first = firstNumber;
}

/**
 * Sets the second number.
 * @param secondNumber  Second integer
 */
-(void) setSecond: (int) secondNumber {
    _second = secondNumber;
}

/**
 * Gets the first number.
 * @returns The first integer
 */
-(int) getFirst {
    return _first;
}

/**
 * Gets the second number.
 * @returns The second integer
 */
-(int) getSecond {
    return _second;
}

/**
 * Adds the two integers together
 * @returns The sum of the first and second integer
 */
-(int) add {
    return _first + _second;
}

/**
 * Subtracts the second integer from the first
 * @returns The difference of integer one and integer two
 */
-(int) subtract {
    return _first - _second;
}

@end

/**
 * The main execution function of the project.
 * @param argc The number of arguments passed via the command line
 * @param argv An array of arguments passed via command line.
 */
int main(int argc, const char * argv[])
{
    // Memory management scope
    @autoreleasepool {
        // Create an instance of the SimpleCalc class and allocate.
        SimpleCalc *calc = [[SimpleCalc alloc]init];
        
        // Assign first and second numbers (1, 9)
        calc.first = 1; calc.second = 9;
        // Output (using string formatting) the first number, operation, second number, and operation result
        NSLog(@"%d plus %d equals %d", calc.getFirst, calc.getSecond, calc.add);
        NSLog(@"%d minus %d equals %d", calc.getFirst, calc.getSecond, calc.subtract);
        
        // Assign first and second numbers (11, -20)
        calc.first = 11; calc.second = -20;
        // Output (using string formatting) the first number, operation, second number, and operation result
        NSLog(@"%d plus %d equals %d", calc.getFirst, calc.getSecond, calc.add);
        NSLog(@"%d minus %d equals %d", calc.getFirst, calc.getSecond, calc.subtract);
    
        // Assign first and second numbers (0, 0)
        calc.first = 0; calc.second = 0;
        // Output (using string formatting) the first number, operation, second number, and operation result
        NSLog(@"%d plus %d equals %d", calc.getFirst, calc.getSecond, calc.add);
        NSLog(@"%d minus %d equals %d", calc.getFirst, calc.getSecond, calc.subtract);
    
        // Assign first and second numbers (0.5, 5)
        calc.first = 0.5; calc.second = 5;
        // Output (using string formatting) the first number, operation, second number, and operation result
        NSLog(@"%d plus %d equals %d", calc.getFirst, calc.getSecond, calc.add);
        NSLog(@"%d minus %d equals %d", calc.getFirst, calc.getSecond, calc.subtract);
        
        // Assign first and second numbers (97, 10)
        calc.first = 'a'; calc.second = 10;
        // Output (using string formatting) the first number, operation, second number, and operation result
        NSLog(@"%d plus %d equals %d", calc.getFirst, calc.getSecond, calc.add);
        NSLog(@"%d minus %d equals %d", calc.getFirst, calc.getSecond, calc.subtract);
    }

    return 0;
}
