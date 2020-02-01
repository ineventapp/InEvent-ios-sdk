#import "INEventTabAPIController.h"

@implementation INEventTabAPIController

#pragma mark - EventTab

- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withLink:(NSString *)link {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && link != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"title" : title, @"link" : link}};

		[self objectWithModule:@"event.tab" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithTab:(NSString *)tab withLanguage:(NSString *)language withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && tab != nil && language != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"tab" : tab, @"language" : language}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.tab" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventTab:(NSInteger)eventTabID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventTabID" : [NSString stringWithFormat:@"%ld", (long)eventTabID]}};

		[self objectWithModule:@"event.tab" method:@"remove" attributes:attributes];
	}
}

- (void)getAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"event.tab" method:@"get" attributes:attributes];
	}
}

@end
