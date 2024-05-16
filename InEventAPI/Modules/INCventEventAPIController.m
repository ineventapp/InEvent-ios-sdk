#import "INCventEventAPIController.h"

@implementation INCventEventAPIController

#pragma mark - CventEvent

- (void)bindAuthenticatedAtEventWithCventId:(NSString *)cventId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && cventId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"cventId" : cventId}};

		[self objectWithModule:@"cvent.event" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"cvent.event" method:@"dismiss" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"cvent.event" method:@"get" attributes:attributes];
	}
}

- (void)findOnCventAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"query" : query}};

		[self objectWithModule:@"cvent.event" method:@"findOnCvent" attributes:attributes];
	}
}

- (void)getOnCventAuthenticatedAtCompany:(NSInteger)companyID withCventId:(NSString *)cventId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && cventId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"cventId" : cventId}};

		[self objectWithModule:@"cvent.event" method:@"getOnCvent" attributes:attributes];
	}
}

- (void)syncAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"cvent.event" method:@"sync" attributes:attributes];
	}
}

@end
