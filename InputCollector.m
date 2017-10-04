//
//  InputCollector.m
//  Contact List
//
//  Created by Carlo Namoca on 2017-10-03.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
    {
        NSLog (@"%@", promptString);
        
        char inputChars[255];
        
        fgets (inputChars, 255, stdin);
        
        NSString *inputString = [NSString stringWithUTF8String: inputChars];
        
        NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        return trimmedString;

    };

@end
