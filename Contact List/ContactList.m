//
//  ContactList.m
//  Contact List
//
//  Created by Carlo Namoca on 2017-10-03.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

- (instancetype)init
    {
        self = [super init];
        if (self) {
            self.contactArray = [NSMutableArray new];
        }
        return self;
    }

-(void)addContact:(Contact *)newContact
    {
        [self.contactArray addObject: newContact];
    };
    
@end
