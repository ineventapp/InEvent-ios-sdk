#import "INSpeakerCategoryAPIController.h"

@implementation INSpeakerCategoryAPIController

#pragma mark - SpeakerCategory

- (void)createAuthenticatedAtEventWithName:(NSString *)name withPosition:(NSString *)position {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && position != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"position" : position}};

		[self objectWithModule:@"speaker.category" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtSpeakerCategory:(NSInteger)speakerCategoryID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"speakerCategoryID" : [NSString stringWithFormat:@"%ld", (long)speakerCategoryID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"speaker.category" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtSpeakerCategory:(NSInteger)speakerCategoryID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"speakerCategoryID" : [NSString stringWithFormat:@"%ld", (long)speakerCategoryID]}};

		[self objectWithModule:@"speaker.category" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"name" : name}};

		[self objectWithModule:@"speaker.category" method:@"get" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"speaker.category" method:@"find" attributes:attributes];
	}
}

@end
