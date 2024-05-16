#import "INExportAPIController.h"

@implementation INExportAPIController

#pragma mark - Export

- (void)createAuthenticatedAtEventWithName:(NSString *)name withModule:(NSString *)module withSchema:(NSString *)schema withFrequency:(NSString *)frequency {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && module != nil && schema != nil && frequency != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"module" : module, @"schema" : schema, @"frequency" : frequency}};

		[self objectWithModule:@"export" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtExport:(NSInteger)exportID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"exportID" : [NSString stringWithFormat:@"%ld", (long)exportID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"export" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtExport:(NSInteger)exportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"exportID" : [NSString stringWithFormat:@"%ld", (long)exportID]}};

		[self objectWithModule:@"export" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"export" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtExport:(NSInteger)exportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"exportID" : [NSString stringWithFormat:@"%ld", (long)exportID]}};

		[self objectWithModule:@"export" method:@"get" attributes:attributes];
	}
}

@end
