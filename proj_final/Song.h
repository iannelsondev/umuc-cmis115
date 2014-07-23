//
//  Ian Nelson
//  CMIS115
//  Final Project 
//  Puran Nebhnani
//
//  Song.h
//
//  Created by Ian Nelson on 7/22/14

#import <Foundation/Foundation.h>

@interface Song: NSObject
    @property (readwrite, assign) NSString * name;
    @property (readwrite, assign) NSString * artist;

    -(id)init;
@end
