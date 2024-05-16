#import "INPhotoAPIController.h"

@implementation INPhotoAPIController

#pragma mark - Photo

- (void)createAuthenticatedAtEventWithUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"url" : url}};

		[self objectWithModule:@"photo" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtPhoto:(NSInteger)photoID withSendNotification:(NSString *)sendNotification {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && sendNotification != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}, @"POST" : @{@"sendNotification" : sendNotification}};

		[self objectWithModule:@"photo" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID atTag:(NSInteger)tagID withSelection:(NSString *)selection withPaginated:(NSString *)paginated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && paginated != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"selection" : selection, @"paginated" : paginated}};

		[self objectWithModule:@"photo" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtPhoto:(NSInteger)photoID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%ld", (long)photoID]}};

		[self objectWithModule:@"photo" method:@"get" attributes:attributes];
	}
}

- (void)recognizerAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"photo" method:@"recognizer" attributes:attributes];
	}
}

- (void)recognizerAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"photo" method:@"recognizer" attributes:attributes];
	}
}

- (void)checkRecognizerProcessAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"photo" method:@"checkRecognizerProcess" attributes:attributes];
	}
}

- (void)checkRecognizerProcessAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"photo" method:@"checkRecognizerProcess" attributes:attributes];
	}
}

@end
