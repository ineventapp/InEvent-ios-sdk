//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventMapAPIController.h"

@implementation InEventMapAPIController

#pragma mark - Map

- (void)createItemAuthenticatingWithTokenID:(NSString *)tokenID atMap:(NSInteger)mapID withName:(NSString *)name {
    
	if (tokenID != nil && name != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapID" : [NSString stringWithFormat:@"%d", mapID]}, @"POST" : @{@"name" : name}};
        
		[self JSONObjectWithNamespace:@"map" method:@"createItem" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atMap:(NSInteger)mapID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapID" : [NSString stringWithFormat:@"%d", mapID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"map" method:@"edit" attributes:attributes];
	}
}

- (void)editItemAuthenticatingWithTokenID:(NSString *)tokenID atMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapItemID" : [NSString stringWithFormat:@"%d", mapItemID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"map" method:@"editItem" attributes:attributes];
	}
}

- (void)removeItemAuthenticatingWithTokenID:(NSString *)tokenID atMapItem:(NSInteger)mapItemID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mapItemID" : [NSString stringWithFormat:@"%d", mapItemID]}};
        
		[self JSONObjectWithNamespace:@"map" method:@"removeItem" attributes:attributes];
	}
}

- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"map" method:@"getAll" attributes:attributes];
	}
}

@end