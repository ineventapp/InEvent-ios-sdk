//
//  INPersonToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INToken.h"
#import "INPerson.h"

@interface INPersonToken : INToken <INTokenSingleton>

- (BOOL)isPersonAuthenticated;
- (BOOL)isPersonApproved;
- (BOOL)isPersonWorking;
- (void)removePerson;

@end
