#import "INEventLicenseAPIController.h"

@implementation INEventLicenseAPIController

#pragma mark - EventLicense

- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withMessage:(NSString *)message withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"message" : message, @"email" : email}};

		[self objectWithModule:@"event.license" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withBypass:(NSString *)bypass {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && bypass != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID], @"bypass" : bypass}};

		[self objectWithModule:@"event.license" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventLicense:(NSInteger)eventLicenseID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventLicenseID" : [NSString stringWithFormat:@"%ld", (long)eventLicenseID]}};

		[self objectWithModule:@"event.license" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"event.license" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.license" method:@"find" attributes:attributes];
	}
}

- (void)acceptIntroAuthenticatedAtEventLicense:(NSInteger)eventLicenseID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventLicenseID" : [NSString stringWithFormat:@"%ld", (long)eventLicenseID]}};

		[self objectWithModule:@"event.license" method:@"acceptIntro" attributes:attributes];
	}
}

- (void)approveAuthenticatedAtEventLicense:(NSInteger)eventLicenseID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventLicenseID" : [NSString stringWithFormat:@"%ld", (long)eventLicenseID]}};

		[self objectWithModule:@"event.license" method:@"approve" attributes:attributes];
	}
}

@end
