//
//  Contact.m
//  Contact List
//
//  Created by Carlo Namoca on 2017-10-03.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "Contact.h"

@implementation Contact
    
- (instancetype)init
    {
        self = [super init];
        if (self) {
            self.name = @"null name";
            self.email = @"null email";
        }
        return self;
    }

@end
