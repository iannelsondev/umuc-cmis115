//
//  Ian Nelson
//  CMIS115
//  Final Project 
//  Puran Nebhnani
//
//  SongList.m
//
//  Created by Ian Nelson on 7/22/14

#import <Foundation/Foundation.h>
#import "SongList.h"
#import "Song.h"

@implementation SongList: NSObject

@synthesize songs;

/**
 * Default constructor.
 *
 * Assigns a NSMutableArray with 10 slot capacity.
 *
 * @constructor
 */
-(id)init {
    // Inherit from NSObject.
    self = [super init];
    // Create the NSMutableArray to hold Song objects.
    self.songs=[[NSMutableArray alloc] initWithCapacity:10];
    // Return scope.
    return self;
};

/**
 * Prints the song at an index in the array.
 *
 * @param index Integer-based index of the array
 */
-(void)printSongAtIndex: (int)index {
    // If the index is less than the size of the array...
    if (index < 10) {
        // Retrieve and cast the Song instance at that index.
        Song *requestSong = (Song *)[songs objectAtIndex:index];
        // Print a log of the song.
        NSLog(@"The song in position %d is '%@' by '%@'.", index + 1, requestSong.name, requestSong.artist);
    }
    // ... or if it's not...
    else {
        // Print an error message.
        NSLog(@"There is no song at that position (%d).", index + 1);
    }
};

/**
 * Prints all songs within the array.
 */
-(void)printSongs {
    // Scan through the length of the array...
    for (int i = 0; i < [songs count]; i++) {
        // Print the song and position from the object at that index.
        // i+1 tells the user the position, adjusted by one for 0-based index.
        NSLog(@"Song at position %d is '%@' by '%@'.", i + 1, [songs[i] name], [songs[i] artist]);
    }
};

/**
 * Returns the number of songs in the array.
 *
 * @return int Number of songs
 */
-(int)numberOfSongs {
    return (int)[songs count];
};

/**
 * Adds a song object to the array.
 *
 * @param name Name of the song
 * @param artist Name of the song's artist.
 */
-(void)addSong:(NSString*) name :(NSString*) artist {
    // Create a new Song object.
    Song *newSong = [[Song alloc] init];

    // Set the name property in the Song object.
    [newSong setName: name];
    // Set the artist property in the Song object.
    [newSong setArtist: artist];

    // Add the new Song object to the NSMutableArray.
    [songs addObject:newSong];

    // Print a log that the new song was added.
    NSLog(@"Added new song: '%@ - %@'.", [newSong name], [newSong artist]);
};

/**
 * Sorts the NSMutableArray of Song objects by their 'artist' property.
 */
-(void)sortSongs {
    // Define the sort descriptor using the 'artist' object key in ascending order.
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"artist" ascending:YES];
    // Sort the songs NSMutableArray in place.
    [songs sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
};

/**
 * Saves the NSMutableArray contents to 'songlist.txt'
 */
-(void)save {
    // Define the file name for output.
    NSString *fileName= @"songlist.txt";
    // Create an NSError object with no error status.
    NSError *error = noErr;

    // Define an empty content string.
    NSString *content = @"";

    // For each song in the array...
    for (int i = 0; i < [songs count]; i++) {
        // Format the output string ('song','artist')
        NSString *entry = [NSString stringWithFormat:@"'%@','%@'\n", [songs[i] name], [songs[i] artist]];
        // Concatenate the strings.
        content = [content stringByAppendingString:entry];
    }

    // Write the string to the file, and get success flag.
    BOOL success = [content writeToFile:fileName atomically:YES encoding:NSUTF8StringEncoding error:&error];
    // If there was an error, log it.
    if (!success) {
        NSLog(@"%@", error);
    }
};

@end

