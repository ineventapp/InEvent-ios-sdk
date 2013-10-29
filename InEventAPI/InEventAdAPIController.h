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
- (void)getAdsAtEvent:(NSInteger)eventID;
- (void)seenAd:(NSInteger)adID;

@end
