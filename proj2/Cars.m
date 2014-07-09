//
//  Ian Nelson
//  CMIS115
//  Project 2
//  Puran Nebhnani
//
//  Cars.m
//
//  Created by Ian Nelson on 7/8/14

#import <Foundation/Foundation.h>
#import "Cars.h"

/**
 * Class implementation for Wheeled
 *
 * @inherits NSObject
 */
@implementation Cars

/**
 * Default constructor. Sets wheels to '4'.
 */
-(id)init {
    self = [super init];
    self.wheels = 4;
    return self;
}

/**
 * Prints message that Car is moving and calls superclass fn
 */
- (void) start {
    NSLog(@"Car is now moving.");
    [super start];
}

/**
 * Prints message that Car is breaking and calls superclass fn
 */
- (void) stop {
    NSLog(@"Brakes are being applied.");
    [super stop];
}
@end