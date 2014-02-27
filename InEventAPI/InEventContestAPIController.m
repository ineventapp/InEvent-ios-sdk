//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventContestAPIController.h"

@implementation InEventContestAPIController

#pragma mark - Contest

- (void)requestAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"contest" method:@"requestAddress" attributes:attributes];
	}
}

- (void)informAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withUrl:(NSString *)url {
    
	if (tokenID != nil && url != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"url" : url}};
        
		[self JSONObjectWithNamespace:@"contest" method:@"informAddress" attributes:attributes];
	}
}

@end