//
//  Ian Nelson
//  CMIS115
//  Final Project 
//  Puran Nebhnani
//
//  SongList.h
//
//  Created by Ian Nelson on 7/22/14
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
-(void)sortSongs;
-(void)save;
@end
