#import "INScreenAPIController.h"

@implementation INScreenAPIController

#pragma mark - Screen

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page withJson:(NSString *)json {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil && json != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"page" : page, @"json" : json}};

		[self objectWithModule:@"screen" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPage:(NSString *)page withJson:(NSString *)json {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && json != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"page" : page, @"json" : json}};

		[self objectWithModule:@"screen" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"page" : page}};

		[self objectWithModule:@"screen" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"screen" method:@"find" attributes:attributes];
	}
}

@end
