//
//  Ian Nelson
//  CMIS115
//  Homework 4
//  Puran Nebhnani
//
//  Created by Ian Nelson on 7/15/14

// Import the Foundation library
#import <Foundation/Foundation.h>

#import "SongList.h" 

/**
 * The main execution function of the project.
 * @param argc The number of arguments passed via the command line
 * @param argv An array of arguments passed via command line.
 */
int main(int argc, const char * argv[]) {
    // Memory management scope
    @autoreleasepool {
        // Create the song list and print message.
        SongList *songList = [[SongList alloc] init];
        NSLog(@"Created a new song list for your jukebox.");

        // Print the number of songs that the list has after being created.
        NSLog(@"Total number of songs: %d.", [songList numberOfSongs]);

        // Cite the song/artist sources.
        NSLog(@"Presenting the top ten songs of 1969!");
        NSLog(@"Brought to you by http://www.bobborst.com/popculture/top-100-songs-of-the-year/?year=1969");

        // Add the top 10 songs from 1969.
        [songList addSong:@"Sugar, Sugar" :@"Archies"];
        [songList addSong:@"Aquarius / Let the Sunshine In" :@"Fifth Dimension"];
        [songList addSong:@"I Can't Get Next To You" :@"Temptations"];
        [songList addSong:@"Honky Tonk Women" :@"Rolling Stones"];
        [songList addSong:@"Everyday People" :@"Sly and The Family Stone"];
        [songList addSong:@"Dizzy" :@"Tommy Roe"];
        [songList addSong:@"Hot Fun In The Summertime" :@"Sly and The Family Stone"];
        [songList addSong:@"I'll Never Fall In Love Again" :@"Tom Jones"];
        [songList addSong:@"Build Me Up Buttercup" :@"Foundations"];
        [songList addSong:@"Crimson And Clover" :@"Tommy James and The Shondells"];

        // Print the total number of songs after adding them all.
        NSLog(@"Total number of songs: %d.", [songList numberOfSongs]);
        
        // Print a dump of the list to ensure they were added to the NSMutableArray.
        NSLog(@"Printing all of the songs in the list..."); 
        [songList printSongs];

        // Print a song within the array bounds.
        NSLog(@"Printing a song at index 2 (in-bounds)...");
        [songList printSongAtIndex:2];

        // Attempt to print a song out of the array bounds.
        NSLog(@"Printing a song at index 11 (out-of-bounds)...");
        [songList printSongAtIndex:11];
    }

    // Exit cleanly.
    return 0;
}
