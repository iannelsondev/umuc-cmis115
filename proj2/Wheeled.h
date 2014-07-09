//
//  Ian Nelson
//  CMIS115
//  Project 2
//  Puran Nebhnani
//
//  Wheeled.h
//
//  Created by Ian Nelson on 7/8/14

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

// Definition to start Wheeled object.
- (void) start;

// Definition to stop Wheeled object.
- (void) stop;
@end
