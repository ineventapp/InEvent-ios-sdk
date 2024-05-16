#import "INLicenseAPIController.h"

@implementation INLicenseAPIController

#pragma mark - License

- (void)createAuthenticatedWithUsername:(NSString *)username withCourse:(NSString *)course withLocation:(NSString *)location {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && username != nil && course != nil && location != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"username" : username, @"course" : course, @"location" : location}};

		[self objectWithModule:@"license" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedWithNumber:(NSString *)number withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"license" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtLicense:(NSInteger)licenseID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"license" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedWithNumber:(NSString *)number {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number}};

		[self objectWithModule:@"license" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedWithAvailable:(NSString *)available withQuery:(NSString *)query withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && available != nil && query != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"available" : available, @"query" : query, @"order" : order}};

		[self objectWithModule:@"license" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedWithNumber:(NSString *)number {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number}};

		[self objectWithModule:@"license" method:@"get" attributes:attributes];
	}
}

- (void)addCourseAuthenticatedAtLicense:(NSInteger)licenseID withCourse:(NSString *)course {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && course != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"course" : course}};

		[self objectWithModule:@"license" method:@"addCourse" attributes:attributes];
	}
}

- (void)removeCourseAuthenticatedAtLicense:(NSInteger)licenseID withCourse:(NSString *)course {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && course != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"course" : course}};

		[self objectWithModule:@"license" method:@"removeCourse" attributes:attributes];
	}
}

- (void)addRegionAuthenticatedAtLicense:(NSInteger)licenseID withRegion:(NSString *)region {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && region != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"region" : region}};

		[self objectWithModule:@"license" method:@"addRegion" attributes:attributes];
	}
}

- (void)removeRegionAuthenticatedAtLicense:(NSInteger)licenseID withRegion:(NSString *)region {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && region != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"licenseID" : [NSString stringWithFormat:@"%ld", (long)licenseID]}, @"POST" : @{@"region" : region}};

		[self objectWithModule:@"license" method:@"removeRegion" attributes:attributes];
	}
}

- (void)requestAuthenticatedWithNumber:(NSString *)number withLeadEmail:(NSString *)leadEmail {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && number != nil && leadEmail != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"number" : number}, @"POST" : @{@"leadEmail" : leadEmail}};

		[self objectWithModule:@"license" method:@"request" attributes:attributes];
	}
}

@end
