//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventPhotoAPIController.h"

@implementation InEventPhotoAPIController

#pragma mark - Photo

- (void)postAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withUrl:(NSString *)url {
    
	if (tokenID != nil && url != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"url" : url}};
        
		[self JSONObjectWithNamespace:@"photo" method:@"post" attributes:attributes];
	}
}

- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"photo" method:@"getAll" attributes:attributes];
	}
}

- (void)getSingleAuthenticatingWithTokenID:(NSString *)tokenID atPhoto:(NSInteger)photoID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%d", photoID]}};
        
		[self JSONObjectWithNamespace:@"photo" method:@"getSingle" attributes:attributes];
	}
}

@end