#import "INSpeakerAPIController.h"

@implementation INSpeakerAPIController

#pragma mark - Speaker

- (void)createAuthenticatedAtEventWithName:(NSString *)name withHeadline:(NSString *)headline withImage:(NSString *)image {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && headline != nil && image != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"headline" : headline, @"image" : image}};

		[self objectWithModule:@"speaker" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"speaker" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtSpeaker:(NSInteger)speakerID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"speaker" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtSpeaker:(NSInteger)speakerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

		[self objectWithModule:@"speaker" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withCategorized:(NSString *)categorized {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && categorized != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"categorized" : categorized}};

		[self objectWithModule:@"speaker" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && categorized != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"categorized" : categorized}};

		[self objectWithModule:@"speaker" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithCategorized:(NSString *)categorized {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && categorized != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"categorized" : categorized}};

		[self objectWithModule:@"speaker" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSpeaker:(NSInteger)speakerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

		[self objectWithModule:@"speaker" method:@"get" attributes:attributes];
	}
}

- (void)getAtSpeaker:(NSInteger)speakerID {



	NSDictionary *attributes = @{@"GET" : @{@"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

	[self objectWithModule:@"speaker" method:@"get" attributes:attributes];
}

@end
