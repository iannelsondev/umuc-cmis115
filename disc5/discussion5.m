//
//  Ian Nelson
//  CMIS115
//  Discussion 5
//  Puran Nebhnani
//
//  Created by Ian Nelson on 7/2/14

#import <Foundation/Foundation.h>

/**
 * Class interface for a Shape
 *
 * @inherits NSObject
 */
@interface Shape: NSObject {
        @private int vertices;
}

// Vertices property
@property (readwrite, assign) int vertices;

// Definition to print vertices.
- (void) printVertices;

@end

/**
 * Class implementation for Shape
 *
 * @inherits NSObject
 */
@implementation Shape 

// Synthesize the vertices variable.
@synthesize vertices;

/**
 * Prints the number of vertices
 */
- (void) printVertices {
        printf("I have %d vertices.\n", [self vertices]);
}

@end

/**
 * Class interface for a Triangle
 * 
 * @inherits Shape
 */
@interface Triangle: Shape {
}

@end

/**
 * Class implementation for a Triangle
 *
 * @inherits Shape
 */
@implementation Triangle

// Default constructor, sets vertices to three
- (id) init {
    self = [super init];
    self.vertices = 3;
    return self;
}

@end

/**
 * The main execution function of the project.
 * @param argc The number of arguments passed via the command line
 * @param argv An array of arguments passed via command line.
 */
int main (int argc, const char * argv[]) {
    // Memory management
    @autoreleasepool {
        // Create a new default shape
        Shape *shape = [Shape new];
        // Self-assign two vertices and print
        shape.vertices = 2;
        [shape printVertices];

        // Create a new Triangle object.
        Triangle *tri = [Triangle new];
        // Print 3 vertices.
        [tri printVertices];
    }
    // Exit cleanly.
    return 0;
}
