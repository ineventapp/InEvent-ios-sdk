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
- (void)postPhoto:(NSString *)url atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getAllAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getSingle:(NSInteger)photoID withTokenID:(NSString *)tokenID;

@end
