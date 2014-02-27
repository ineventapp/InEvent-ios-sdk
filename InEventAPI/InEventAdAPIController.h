//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventAdAPIController : InEventAPIController

#pragma mark - Ad
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withImage:(NSString *)image withWeight:(NSString *)weight;
- (void)createForExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID withImage:(NSString *)image withWeight:(NSString *)weight;
- (void)getAllAtEvent:(NSInteger)eventID;
- (void)getAllByExhibitorAtEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID;
- (void)seenAdAtAd:(NSInteger)adID;

@end