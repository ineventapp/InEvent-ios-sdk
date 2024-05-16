#import "INEventReportAPIController.h"

@implementation INEventReportAPIController

#pragma mark - EventReport

- (void)personSchemaAuthenticatedAtEventWithLocation:(NSString *)location {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && location != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"location" : location}};

		[self objectWithModule:@"event.report" method:@"personSchema" attributes:attributes];
	}
}

- (void)personReportAuthenticatedAtEventWithLocation:(NSString *)location withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection withSchema:(NSString *)schema {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && location != nil && order != nil && orderDirection != nil && schema != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"location" : location, @"order" : order, @"orderDirection" : orderDirection}, @"POST" : @{@"schema" : schema}};

		[self objectWithModule:@"event.report" method:@"personReport" attributes:attributes];
	}
}

@end
