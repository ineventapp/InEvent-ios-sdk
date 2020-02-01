#import "INImageAPIController.h"

@implementation INImageAPIController

#pragma mark - Image

- (void)createAuthenticatedAtEventWithName:(NSString *)name withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"url" : url}};

		[self objectWithModule:@"image" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtImage:(NSInteger)imageID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"imageID" : [NSString stringWithFormat:@"%ld", (long)imageID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"image" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtImage:(NSInteger)imageID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"imageID" : [NSString stringWithFormat:@"%ld", (long)imageID]}};

		[self objectWithModule:@"image" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"image" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtImage:(NSInteger)imageID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"imageID" : [NSString stringWithFormat:@"%ld", (long)imageID]}};

		[self objectWithModule:@"image" method:@"get" attributes:attributes];
	}
}

@end
