//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INAllyAPIController.h"

@implementation INAllyAPIController

#pragma mark - Ally

- (void)createAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email {
    
	if (name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, }};
        
		[self JSONObjectWithModule:@"ally" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedForAlly:(NSInteger)allyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"allyID" : [NSString stringWithFormat:@"%d", allyID]}};
    
	[self JSONObjectWithModule:@"ally" method:@"create" attributes:attributes];
}

- (void)editAuthenticatedForAlly:(NSInteger)allyID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"allyID" : [NSString stringWithFormat:@"%d", allyID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithModule:@"ally" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedForAlly:(NSInteger)allyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"allyID" : [NSString stringWithFormat:@"%d", allyID]}};
    
	[self JSONObjectWithModule:@"ally" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedWithSelection:(NSString *)selection {
    
	if (selection != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"selection" : selection}};
        
		[self JSONObjectWithModule:@"ally" method:@"find" attributes:attributes];
	}
}

- (void)writeMailAuthenticatedForAlly:(NSInteger)allyID {
    
	NSDictionary *attributes = @{@"GET" : @{@"allyID" : [NSString stringWithFormat:@"%d", allyID]}};
    
	[self JSONObjectWithModule:@"ally" method:@"writeMail" attributes:attributes];
}

@end