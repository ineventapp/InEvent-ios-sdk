#import "INEventTabAPIController.h"

@implementation INEventTabAPIController

#pragma mark - EventTab

- (void)createAuthenticatedAtEventWithType:(NSString *)type withTitle:(NSString *)title withLink:(NSString *)link {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && title != nil && link != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"title" : title, @"link" : link}};

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

- (void)removeAuthenticatedAtEventAtEventTab:(NSInteger)eventTabID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"eventTabID" : [NSString stringWithFormat:@"%ld", (long)eventTabID]}};

		[self objectWithModule:@"event.tab" method:@"remove" attributes:attributes];
	}
}

- (void)findAtEvent {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self objectWithModule:@"event.tab" method:@"find" attributes:attributes];
	}
}

- (void)getAtEventTab:(NSInteger)eventTabID {



	NSDictionary *attributes = @{@"GET" : @{@"eventTabID" : [NSString stringWithFormat:@"%ld", (long)eventTabID]}};

	[self objectWithModule:@"event.tab" method:@"get" attributes:attributes];
}

- (void)bindListAtEventTab:(NSInteger)eventTabID atList:(NSInteger)listID {



	NSDictionary *attributes = @{@"GET" : @{@"eventTabID" : [NSString stringWithFormat:@"%ld", (long)eventTabID], @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

	[self objectWithModule:@"event.tab" method:@"bindList" attributes:attributes];
}

- (void)dismissListAtEventTab:(NSInteger)eventTabID atList:(NSInteger)listID {



	NSDictionary *attributes = @{@"GET" : @{@"eventTabID" : [NSString stringWithFormat:@"%ld", (long)eventTabID], @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

	[self objectWithModule:@"event.tab" method:@"dismissList" attributes:attributes];
}

@end
