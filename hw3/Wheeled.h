//
//  Ian Nelson
//  CMIS115
//  Homework 3 
//  Puran Nebhnani
//
//  Wheeled.h
//
//  Created by Ian Nelson on 7/2/14

#import <Foundation/Foundation.h>

/**
 * Class interface for Wheeled 
 *
 * @inherits NSObject
 */
@interface Wheeled: NSObject {
    @private int speed;
    @private int wheels;
}

// Speed/wheels properties
@property (readwrite, assign) int speed;
@property (readwrite, assign) int wheels;

// Definition to print vertices.
- (void) start;

@end
