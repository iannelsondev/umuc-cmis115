//
//  Ian Nelson
//  CMIS115
//  Homework 4
//  Puran Nebhnani
//
//  Song.h
//
//  Created by Ian Nelson on 7/15/14

#import <Foundation/Foundation.h>

@interface Song: NSObject
    @property (readwrite, assign) NSString * name;
    @property (readwrite, assign) NSString * artist;

    -(id)init;
@end
