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
                Contact *newContact = [Contact new];
                NSLog (@"Input email: ");
                NSString *newEmail = [newInput inputForPrompt:@"Enter email"];
                [newContact setEmail: newEmail];
                NSLog (@"Input name: ");
                NSString *newName = [newInput inputForPrompt:@"Enter name"];
                [newContact setName: newName];
                
                [newArray addContact: newContact];
            }
        else if ([usernameInput isEqualToString:(@"list")])
            {
                NSLog(@"Your contacts are: ");
                for (int i = 0; i < newArray.contactArray.count; i++)
                {
                    Contact *c = [newArray.contactArray objectAtIndex:i];
                    NSLog(@"%@", c.name);
                }
            }
            

        } while (appOn);
        
    }
    return 0;
}
