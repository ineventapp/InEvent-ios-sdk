#import "INEventBookingAPIController.h"

@implementation INEventBookingAPIController

#pragma mark - EventBooking

- (void)createAuthenticatedAtEventWithName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withCompany:(NSString *)company withDataCollectors:(NSString *)dataCollectors withLiveSupport:(NSString *)liveSupport withExtraPhone:(NSString *)extraPhone withExtraLive:(NSString *)extraLive withAutomaticReport:(NSString *)automaticReport withBeacons:(NSString *)beacons withPricing:(NSString *)pricing {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && email != nil && telephone != nil && company != nil && dataCollectors != nil && liveSupport != nil && extraPhone != nil && extraLive != nil && automaticReport != nil && beacons != nil && pricing != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"email" : email, @"telephone" : telephone, @"company" : company, @"dataCollectors" : dataCollectors, @"liveSupport" : liveSupport, @"extraPhone" : extraPhone, @"extraLive" : extraLive, @"automaticReport" : automaticReport, @"beacons" : beacons, @"pricing" : pricing}};

		[self objectWithModule:@"event.booking" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query}};

		[self objectWithModule:@"event.booking" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventWithValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"value" : value}};

		[self objectWithModule:@"event.booking" method:@"get" attributes:attributes];
	}
}

@end
