#import "INPaygovEventAPIController.h"

@implementation INPaygovEventAPIController

#pragma mark - PaygovEvent

- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"paygov.event" method:@"operate" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && dateBegin != nil && dateEnd != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"dateBegin" : dateBegin, @"dateEnd" : dateEnd}};

		[self objectWithModule:@"paygov.event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"paygov.event" method:@"get" attributes:attributes];
	}
}

@end
