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
        NSLog(@"(Starting Wheeled, should not see a message.)");
        [wheeled start];
        [wheeled setWheels:2];

        // Print the number of wheels and speed on the Wheeled instance.
        NSLog(@"Speed of Wheeled: %d", [wheeled speed]);
        NSLog(@"Number of wheels on Wheeled: %d", [wheeled wheels]);

        // Wheeled brake check.
        NSLog(@"(Applying brakes to Wheeled, should not see a message.)");
        [wheeled brake];
        NSLog(@"Speed of Wheeled: %d", [wheeled speed]);

        // Spacer.
        NSLog(@"\n");

        // Create a new cars object.
        Cars *car = [Cars new];

        // Start the car (20mph) and set number
        // of wheels to four. 
        NSLog(@"(Starting Car, should see a message.)");
        [car start];

        // Print the number of wheels and speed on the Wheeled instance.
        NSLog(@"Speed of Car: %d", [car speed]);
        NSLog(@"Number of wheels on car: %d", [car wheels]);

        // Car brake check.
        NSLog(@"(Applying brakes to Car, should see a message.)");
        [car brake];
        NSLog(@"Speed of Car: %d", [car speed]);
    }
   
    // Exit cleanly.
    return 0;
}
