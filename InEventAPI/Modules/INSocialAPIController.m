#import "INSocialAPIController.h"

@implementation INSocialAPIController

#pragma mark - Social

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self JSONObjectWithModule:@"social" method:@"find" attributes:attributes];
	}
}

- (void)editAuthenticatedAtSocial:(NSInteger)socialID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"socialID" : [NSString stringWithFormat:@"%ld", (long)socialID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"social" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSocial:(NSInteger)socialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"socialID" : [NSString stringWithFormat:@"%ld", (long)socialID]}};

		[self JSONObjectWithModule:@"social" method:@"get" attributes:attributes];
	}
}

@end