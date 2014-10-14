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

- (BOOL)isMemberAuthenticated;
- (BOOL)isMemberApproved;
- (BOOL)isMemberWorking;
- (void)removeMember;

@end
