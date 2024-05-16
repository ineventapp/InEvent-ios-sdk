#import "INLivePersonAPIController.h"

@implementation INLivePersonAPIController

#pragma mark - LivePerson

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.person" method:@"find" attributes:attributes];
	}
}

- (void)keepAliveAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.person" method:@"keepAlive" attributes:attributes];
	}
}

- (void)analyticsFindAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && order != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"order" : order, @"query" : query}};

		[self objectWithModule:@"live.person" method:@"analyticsFind" attributes:attributes];
	}
}

- (void)analyticsGetWithVisualForceToken:(NSString *)visualForceToken atCompany:(NSInteger)companyID forPerson:(NSInteger)personID withGroupBy:(NSString *)groupBy withQuery:(NSString *)query {


	if (visualForceToken != nil && groupBy != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"visualForceToken" : visualForceToken, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"groupBy" : groupBy, @"query" : query}};

		[self objectWithModule:@"live.person" method:@"analyticsGet" attributes:attributes];
	}
}

- (void)analyticsGetAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withGroupBy:(NSString *)groupBy withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && groupBy != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"groupBy" : groupBy, @"query" : query}};

		[self objectWithModule:@"live.person" method:@"analyticsGet" attributes:attributes];
	}
}

- (void)sessionHistoryAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"live.person" method:@"sessionHistory" attributes:attributes];
	}
}

@end
