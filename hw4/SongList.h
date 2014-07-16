//
//  Ian Nelson
//  CMIS115
//  Homework 4
//  Puran Nebhnani
//
//  SongList.h
//
//  Created by Ian Nelson on 7/15/14
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface SongList: NSObject 

@property (readwrite, assign) NSMutableArray *songs;

-(id)init;
-(void)printSongAtIndex: (int)index;
-(void)printSongs;
-(int)numberOfSongs;
-(void)addSong:(NSString*) name :(NSString*) artist;

@end
