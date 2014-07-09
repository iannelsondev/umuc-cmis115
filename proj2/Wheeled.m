//
//  Ian Nelson
//  CMIS115
//  Homework 3 
//  Puran Nebhnani
//
//  Wheeled.m
//
//  Created by Ian Nelson on 7/2/14

#import <Foundation/Foundation.h>
#import "Wheeled.h"

/**
 * Class implementation for Wheeled 
 *
 * @inherits NSObject
 */
@implementation Wheeled 

// Synthesize the speed and wheels variables.
@synthesize speed;
@synthesize wheels;

/**
* Prints the number of vertices
*/
- (void) start {
    speed = 20; 
}

/**
 * Resets the speed to 0
 */
- (void) brake {
    speed = 0;
}

@end

