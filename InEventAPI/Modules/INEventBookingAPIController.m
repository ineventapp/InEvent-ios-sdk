#import "INEventBookingAPIController.h"

@implementation INEventBookingAPIController

#pragma mark - EventBooking

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withTimezone:(NSString *)timezone withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withEventFields:(NSString *)eventFields withExtras:(NSString *)extras atTemplate:(NSInteger)templateID atForCompany:(NSInteger)forCompanyID atForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && timezone != nil && dateBegin != nil && dateEnd != nil && eventFields != nil && extras != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"timezone" : timezone, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"eventFields" : eventFields, @"extras" : extras, @"templateID" : [NSString stringWithFormat:@"%ld", (long)templateID], @"forCompanyID" : [NSString stringWithFormat:@"%ld", (long)forCompanyID], @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"event.booking" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID atEventBooking:(NSInteger)eventBookingID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventBookingID" : [NSString stringWithFormat:@"%ld", (long)eventBookingID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.booking" method:@"edit" attributes:attributes];
	}
}

- (void)authorizeAuthenticatedAtCompany:(NSInteger)companyID atEventBooking:(NSInteger)eventBookingID atTemplate:(NSInteger)templateID atSibling:(NSInteger)siblingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventBookingID" : [NSString stringWithFormat:@"%ld", (long)eventBookingID]}, @"POST" : @{@"templateID" : [NSString stringWithFormat:@"%ld", (long)templateID], @"siblingID" : [NSString stringWithFormat:@"%ld", (long)siblingID]}};

		[self objectWithModule:@"event.booking" method:@"authorize" attributes:attributes];
	}
}

- (void)rejectAuthenticatedAtEventBooking:(NSInteger)eventBookingID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBookingID" : [NSString stringWithFormat:@"%ld", (long)eventBookingID]}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"event.booking" method:@"reject" attributes:attributes];
	}
}

- (void)assignOwnerAuthenticatedAtEventBooking:(NSInteger)eventBookingID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBookingID" : [NSString stringWithFormat:@"%ld", (long)eventBookingID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"event.booking" method:@"assignOwner" attributes:attributes];
	}
}

@end
