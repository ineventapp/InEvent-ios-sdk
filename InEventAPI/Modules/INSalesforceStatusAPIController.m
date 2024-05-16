#import "INSalesforceStatusAPIController.h"

@implementation INSalesforceStatusAPIController

#pragma mark - SalesforceStatus

- (void)bindAuthenticatedAtEventWithInTrigger:(NSString *)inTrigger withSfStatus:(NSString *)sfStatus {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && inTrigger != nil && sfStatus != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"inTrigger" : inTrigger, @"sfStatus" : sfStatus}};

		[self objectWithModule:@"salesforce.status" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtSalesforceStatus:(NSInteger)salesforceStatusID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"salesforceStatusID" : [NSString stringWithFormat:@"%ld", (long)salesforceStatusID]}};

		[self objectWithModule:@"salesforce.status" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.status" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSalesforceStatus:(NSInteger)salesforceStatusID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"salesforceStatusID" : [NSString stringWithFormat:@"%ld", (long)salesforceStatusID]}};

		[self objectWithModule:@"salesforce.status" method:@"get" attributes:attributes];
	}
}

- (void)getStatusesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"salesforce.status" method:@"getStatuses" attributes:attributes];
	}
}

@end
