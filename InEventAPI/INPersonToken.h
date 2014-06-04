//
//  INPersonToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INPerson.h"

@interface INPersonToken : NSObject

@property (strong, nonatomic) NSString *tokenID;
@property (assign, nonatomic) NSInteger memberID;
@property (assign, nonatomic) INPersonState approved;
@property (assign, nonatomic) INPersonRole role;
@property (strong, nonatomic) NSString *name;

+ (INPersonToken *)sharedInstance;

- (BOOL)isMemberAuthenticated;
- (BOOL)isMemberApproved;
- (BOOL)isMemberWorking;
- (void)removeMember;

@end
