//
//  main.m
//  Discussion 7 
//  CMIS115
//  Created by Ian Nelson on 7/15/14.
//  Puran Nebhnani
//
//  This program creates a string from the NSString class, and iterates
//  through the first 8 characters.

// Import core Foundation library.
#import <Foundation/Foundation.h>

/*! Starts the execution of the program
* \param   argc The count of arguments passed via command line
* \param   argv An array of the command line arguments
* \returns      An integer error code defining success (0) or failure (!0)
*/
int main (int argc, const char * argv[]) {
    // Set up memory management scope.
    @autoreleasepool {
        NSString *discussionString = @"This is a string!";
        NSLog(@"The string is '%@'", discussionString);

        NSLog(@"Finding the first 8 characters the old fashioned way:");
        for (int i = 0; i < 8; i++) {
            unichar character = [discussionString characterAtIndex:i];
            NSLog(@"Character at position %d is %c", i, character);
        }

        NSLog(@"Using substring to find the first 8 characters");
        NSLog(@"A sub string of 8 characters is '%@'", [discussionString substringToIndex:8]);

        NSLog(@"Let's look for 'string'");
        NSRange range = [discussionString rangeOfString:@"string"];
        if (range.location != NSNotFound) {
            NSLog(@"Found 'string' in the example!");
        }  
    }

    return 0;
}
