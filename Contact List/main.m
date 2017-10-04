//
//  main.m
//  Contact List
//
//  Created by Carlo Namoca on 2017-10-03.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        BOOL appOn = YES;
        ContactList *newArray = [[ContactList alloc] init];
        
        do
        {
        
        //alloc init input collector
        InputCollector *newInput = [[InputCollector alloc] init];
        NSString *usernameInput = [newInput inputForPrompt:@"What would you like to do next?\nnew - create new contact list\nlist - List all contacts\nquit - Exit application"];
        
        if ([usernameInput isEqualToString:@"quit"])
            {
                abort();
            }
        else if ([usernameInput isEqualToString:@"new"])
            {
                Contact *contact1 = [[Contact alloc]init];
                NSString *inputNew = [newInput inputForPrompt:@"input name or email"];
                if ([inputNew isEqualToString:@"name"])
                    {
                        NSString *namePrompt = [newInput inputForPrompt:@"Please enter the full name"];
                        contact1.name = namePrompt;
                        NSLog (@"%@ has been added to your contacts", namePrompt);
                        [newArray addContact: contact1];
                    }
                else if ([inputNew isEqualToString:@"email"])
                    {
                        NSString *namePrompt = [newInput inputForPrompt:@"Please enter the email"];
                        contact1.email = namePrompt;
                        NSLog (@"%@ has been added to your contacts", namePrompt);
                        [newArray addContact: contact1];

                    };
            }
        else if ([usernameInput isEqualToString:(@"list")])
            {
                NSLog(@"The values in your list are: ");
                for (int i = 0; i < newArray.contactArray.count; i++)
                {
                    NSLog(@"- %@", newArray.contactArray);
                }
            }
            

        } while (appOn);
        
    }
    return 0;
}
