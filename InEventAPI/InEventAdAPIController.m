//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventAdAPIController.h"

@implementation InEventAdAPIController

#pragma mark - Ad
- (void)getAdsAtEvent:(NSInteger)eventID {
    
    NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
    [self JSONObjectWithNamespace:@"ad" method:@"getAds" attributes:attributes];
}

- (void)seenAd:(NSInteger)adID {
    
    NSDictionary *attributes = @{@"GET" : @{@"adID" : [NSString stringWithFormat:@"%d", adID]}};
    
    [self JSONObjectWithNamespace:@"ad" method:@"seenAd" attributes:attributes];
}

@end
