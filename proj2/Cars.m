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
#import "Cars.h"

/**
 * Class implementation for Wheeled 
 *
 * @inherits NSObject
 */
@implementation Cars 

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
- (void) brake {
    NSLog(@"Brakes are being applied.");
    [super brake]; 
}
@end

