#import "INTagAPIController.h"

@implementation INTagAPIController

#pragma mark - Tag

- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && name != nil && color != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"color" : color}};

		[self JSONObjectWithModule:@"tag" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTag:(NSInteger)tagID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"tag" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"tag" method:@"find" attributes:attributes];
	}
}

- (void)statisticsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"tag" method:@"statistics" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self JSONObjectWithModule:@"tag" method:@"get" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self JSONObjectWithModule:@"tag" method:@"remove" attributes:attributes];
	}
}

@end