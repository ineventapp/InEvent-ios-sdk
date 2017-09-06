#import "INSponsorAPIController.h"

@implementation INSponsorAPIController

#pragma mark - Sponsor

- (void)createAuthenticatedAtEventWithCompanyName:(NSString *)companyName withContactName:(NSString *)contactName withTelephone:(NSString *)telephone withEmail:(NSString *)email withWebsite:(NSString *)website withBio:(NSString *)bio withLogo:(NSString *)logo withCategory:(NSString *)category {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && companyName != nil && contactName != nil && telephone != nil && email != nil && website != nil && bio != nil && logo != nil && category != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"companyName" : companyName, @"contactName" : contactName, @"telephone" : telephone, @"email" : email, @"website" : website, @"bio" : bio, @"logo" : logo, @"category" : category}};

		[self objectWithModule:@"sponsor" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"sponsor" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"sponsor" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"sponsor" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && companyName != nil && name != nil && email != nil && telephone != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone, @"order" : order}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"sponsor" method:@"get" attributes:attributes];
	}
}

- (void)favoritesAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"sponsor" method:@"favorites" attributes:attributes];
	}
}

- (void)remainingQuotaAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"sponsor" method:@"remainingQuota" attributes:attributes];
	}
}

@end