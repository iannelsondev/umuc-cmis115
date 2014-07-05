#include <Foundation/Foundation.h>
#include "Wheeled.h"
#include "Cars.h"

/**
 * The main execution function of the project.
 *
 * @param argc The number of arguments passed via the command line
 * @param argv An array
 */
int main (int argc, const char * argv[]) {
    // Auto memory management.
    @autoreleasepool {
        // Create a new 'Wheeled' object. 
        Wheeled *wheeled = [Wheeled new];
       
        // Call the start function and set the
        // number of wheels to two for a test.
        [wheeled start];
        [wheeled setWheels:2];

        // Print the number of wheels and speed on the Wheeled instance.
        NSLog(@"Speed of Wheeled: %d", [wheeled speed]);
        NSLog(@"Number of wheels on Wheeled: %d", [wheeled wheels]);

        // Create a new cars object.
        Cars *car = [Cars new];

        // Start the car (20mph) and set number
        // of wheels to four.
        [car start];
        [car setWheels:4];

        // Print the number of wheels and speed on the Wheeled instance.
        NSLog(@"Speed of Car: %d", [car speed]);
        NSLog(@"Number of wheels on car: %d", [car wheels]);
    }
   
    // Exit cleanly.
    return 0;
}
