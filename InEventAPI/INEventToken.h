//
//  INEventToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventToken : NSObject <INAPIControllerDelegate>

@property (assign, nonatomic) NSInteger eventID;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *nick;

+ (INEventToken *)sharedInstance;

- (BOOL)isEventSelected;
- (void)removeEvent;

@end
