#import "INPersonFileAPIController.h"

@implementation INPersonFileAPIController

#pragma mark - PersonFile

- (void)bindAuthenticatedAtEventWithName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && extension != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"extension" : extension, @"url" : url}};

		[self objectWithModule:@"person.file" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtMemberFile:(NSInteger)memberFileID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"memberFileID" : [NSString stringWithFormat:@"%ld", (long)memberFileID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"person.file" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMemberFile:(NSInteger)memberFileID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"memberFileID" : [NSString stringWithFormat:@"%ld", (long)memberFileID]}};

		[self objectWithModule:@"person.file" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"person.file" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMemberFile:(NSInteger)memberFileID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"memberFileID" : [NSString stringWithFormat:@"%ld", (long)memberFileID]}};

		[self objectWithModule:@"person.file" method:@"get" attributes:attributes];
	}
}

@end
