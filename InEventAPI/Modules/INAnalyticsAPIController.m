#import "INAnalyticsAPIController.h"

@implementation INAnalyticsAPIController

#pragma mark - Analytics

- (void)getAuthenticatedAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"page" : page}};

		[self objectWithModule:@"analytics" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID withPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"page" : page}};

		[self objectWithModule:@"analytics" method:@"get" attributes:attributes];
	}
}

@end
