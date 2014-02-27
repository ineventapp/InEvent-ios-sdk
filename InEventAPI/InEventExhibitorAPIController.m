//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventExhibitorAPIController.h"

@implementation InEventExhibitorAPIController

#pragma mark - Exhibitor

- (void)getDetailsAuthenticatingWithTokenID:(NSString *)tokenID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};
        
		[self JSONObjectWithNamespace:@"exhibitor" method:@"getDetails" attributes:attributes];
	}
}

- (void)getDetailsForExhibitorAuthenticatingWithTokenID:(NSString *)tokenID forExhibitor:(NSInteger)exhibitorID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}};
        
		[self JSONObjectWithNamespace:@"exhibitor" method:@"getDetailsForExhibitor" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"exhibitor" method:@"edit" attributes:attributes];
	}
}

@end