//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventPhotoAPIController : InEventAPIController

#pragma mark - Photo
- (void)postAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withUrl:(NSString *)url;
- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)getSingleAuthenticatingWithTokenID:(NSString *)tokenID atPhoto:(NSInteger)photoID;

@end
