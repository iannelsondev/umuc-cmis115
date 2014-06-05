//
//  main.m
//  helloworld
//
//  Created by Ian Nelson on 6/4/14.
//
//

//
//  main.m
//  helloworld
//
//  Copyright 2011 UMUC. All rights reserved.
//
//  Sample Code Listing 1
//
//  This is the first sample application in Objective-C. It demonstrates how to
//  write, compile, and debug an Objective-C program in Xcode.
//

//  The first line of code imports the Foundation Framework, which allows us to use
//  the NSLog function in this code, and to use the Memory Management pool called
//  NSAutoreleasePool.

#import <Foundation/Foundation.h>

//main is the special function that is the starting point for the
//execution of the program.

int main (int argc, const char * argv[])
{
    //Initialize Cocoa's memory-management system.
    //NSAutoreleasePool manages and releases memory that is used in our program.
    //Every program must have this object allocated and initialized
    //at the beginning of the program.
    
    @autoreleasepool {
    
        //Print the first message on the terminal window.
        NSLog(@"Sample Code Listing 1");
    
        //Declare and initialize an integer.
        int coursebase = 100;
        int courselevel = 15;
    
        //Add two integers.
        int coursenumber = coursebase + courselevel;
    
        //Formatted printing on terminal window:
        NSLog(@"Hello, Welcome to CMIS %i - Programming in Objective-C", coursenumber);
    
        //Print a CMIS 115 Mascot on terminal window.
        NSLog(@"                        /////////////");
        NSLog(@"                  \\\\\\\\//////////////");
        NSLog(@"                 .......................");
        NSLog(@"                .........................");
        NSLog(@"               ...........................");
        NSLog(@"                .......o.........o........");
        NSLog(@"                .........................");
        NSLog(@"                 .......................");
        NSLog(@"                  .....................");
        NSLog(@"                   ........-----.....");
        NSLog(@"                    ......._____.....");
        NSLog(@"                      .................");
        NSLog(@"                  ........................");
        NSLog(@"                ............................");
        NSLog(@"             .................................");
        NSLog(@"            ....................................");
        NSLog(@"           .......................................");
    
    //Release all memory.
    }
    return 0;
}

