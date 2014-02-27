//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventContestAPIController : InEventAPIController

#pragma mark - Contest
- (void)requestAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)informAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withUrl:(NSString *)url;

@end
