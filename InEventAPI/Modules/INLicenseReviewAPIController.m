#import "INLicenseReviewAPIController.h"

@implementation INLicenseReviewAPIController

#pragma mark - LicenseReview

- (void)bindAuthenticatedWithUsername:(NSString *)username atLicense:(NSInteger)licenseID withText:(NSString *)text withGrade:(NSString *)grade {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && username != nil && text != nil && grade != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"username" : username, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"text" : text, @"grade" : grade}};

		[self objectWithModule:@"license.review" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtLicense:(NSInteger)licenseID withText:(NSString *)text withGrade:(NSString *)grade {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && text != nil && grade != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"text" : text, @"grade" : grade}};

		[self objectWithModule:@"license.review" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseReviewID" : [NSString stringWithFormat:@"%ld", (long)licenseReviewID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"license.review" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseReviewID" : [NSString stringWithFormat:@"%ld", (long)licenseReviewID]}};

		[self objectWithModule:@"license.review" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"license.review" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"license.review" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLicenseReview:(NSInteger)licenseReviewID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseReviewID" : [NSString stringWithFormat:@"%ld", (long)licenseReviewID]}};

		[self objectWithModule:@"license.review" method:@"get" attributes:attributes];
	}
}

@end
