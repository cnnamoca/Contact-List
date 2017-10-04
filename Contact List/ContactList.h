//
//  ContactList.h
//  Contact List
//
//  Created by Carlo Namoca on 2017-10-03.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
    
@property (nonatomic, strong) NSMutableArray *contactArray;

-(void)addContact:(Contact *)newContact;

@end
