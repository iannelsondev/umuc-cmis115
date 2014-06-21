//
//  Ian Nelson
//  CMIS115
//  Homework 2
//  Puran Nebhnani
//
//  Created by Ian Nelson on 6/19/14

// Import the Foundation library
#import <Foundation/Foundation.h>

// Import math library for pow()
#import <math.h>

/**
 * The main execution function of the project.
 * @param argc The number of arguments passed via the command line
 * @param argv An array of arguments passed via command line.
 */
int main(int argc, const char * argv[]) {
    // Memory management scope
    @autoreleasepool {
        // Define the max range as a bad value for initial input.
        int maxRange = 0;

        // Also define a character for input sanitization.
        char input;

        // While the max range input is bad...
        while (maxRange < 1 || maxRange > 50) {
            // Print the input statement for the user. 'printf' is used
            // to ensure the input is on the same line as the statement.
            printf("Enter the maximum integer value: ");

            // While the input for the integer and CRLF is bad...
            while(scanf("%d%c", &maxRange, &input) != 2 || input != '\n')
            {
                // Print the input message to the user again.
                printf("Enter the maximum integer value: ");

                // If the input is a CRLF...
                if (input == '\n') {
                    // Check again for characters.
                    scanf("%c", &input);
                }
                // If it's not...
                else {
                    // While the input stream isn't a CRLF...
                    while (input != '\n') {
                        // ...keep scanning for one.
                        scanf("%c", &input);
                    }
                }
            }
        }

        // Print the spaced table header.
        printf("N\t\tN^2\t\tN^3\t\tN^4\n");

        // Starting at 1, for each number to the max range...
        for (int i = 1; i <= maxRange; i++) {
            // For each power 1-4...
            for (int j = 1; j <= 4; j++) {
                // Derive the power operator (i ^ j)
                int value = (int)pow(i, j);
                
                // If the value is 1000 or greater...
                if (value >= 1000) {
                    // ... space the values less.
                    printf("%d\t", value);
                }
                // Otherwise...
                else {
                    // Print with full spacing.
                    printf("%d\t\t", value);
                }
            }
            // Print the termination of the row.
            printf("\n");
        }
    }

    // Exit cleanly.
    return 0;
}