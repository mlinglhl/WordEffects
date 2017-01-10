//
//  main.m
//  Jan 9 Word Effects
//
//  Created by Minhung Ling on 2017-01-09.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // 255 unit long array of characters
    char inputChars[255];
    // int variable
    char userSelection[2];

    printf("Input a string: ");
    //limit input to max 255 characters
    fgets(inputChars, 255, stdin);


    //convert char array to an NSString object
    NSString *inputStringWithBreak = [NSString stringWithUTF8String:inputChars];
    NSString *inputString = [inputStringWithBreak substringToIndex:[inputStringWithBreak length] - 1];
    //print NSString object
    NSLog(@"Input was: %@", inputString);
    
    printf("What would you like to do?\n");
    printf("1. Turn string uppercase\n");
    printf("2. Turn string lowercase\n");
    printf("3. Convert string to number\n");
    printf("4. Canadianize string\n");
    printf("5. Ask a question\n");
    printf("6. Remove spaces\n");

    fgets(userSelection, 2, stdin);
    NSString *inputSelection = [NSString stringWithUTF8String:userSelection];
    
    if ([inputSelection intValue] == 1) {
        NSLog (@"%@", [inputString uppercaseString]);
    }
    
    if ([inputSelection intValue] == 2) {
        NSLog (@"%@", [inputString lowercaseString]);
    }
    
    if ([inputSelection intValue] == 3) {
        NSInteger *numberConversion = [inputString integerValue];
        NSLog (@"%@", numberConversion);
    }
    
    if ([inputSelection intValue] == 4) {
        NSString *canadianString = [NSString stringWithFormat:@"%@ eh?", inputString];
        NSLog (@"%@", canadianString);
 
    }

    if ([inputSelection intValue] == 5) {
        if ([inputString hasSuffix:@"?"]) {
            NSLog (@"I don't know.");
 
        }
        else if ([inputString hasSuffix:@"!"] == YES) {
            NSLog (@"Whoa, calm down!");
        }
    }
    
    if ([inputSelection intValue] == 6) {
        NSString *inputWithNoSpaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog (@"%@", inputWithNoSpaces);
    }
    
    return 0;
    
    
}
