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
- (void)postPhoto:(NSString *)url AtEvent:(NSInteger)eventID WithTokenID:(NSString *)tokenID;
- (void)getPhotosAtEvent:(NSInteger)eventID WithTokenID:(NSString *)tokenID;
- (void)getSinglePhoto:(NSInteger)photoID WithTokenID:(NSString *)tokenID;

@end
