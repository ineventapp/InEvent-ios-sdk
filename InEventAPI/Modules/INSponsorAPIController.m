#import "INSponsorAPIController.h"

@implementation INSponsorAPIController

#pragma mark - Sponsor

- (void)createAuthenticatedAtEventWithCompanyName:(NSString *)companyName withContactName:(NSString *)contactName withTelephone:(NSString *)telephone withEmail:(NSString *)email withWebsite:(NSString *)website withBio:(NSString *)bio withLogo:(NSString *)logo withCategory:(NSString *)category withIgnoreCache:(NSString *)ignoreCache withExhibitor:(NSString *)exhibitor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && companyName != nil && contactName != nil && telephone != nil && email != nil && website != nil && bio != nil && logo != nil && category != nil && ignoreCache != nil && exhibitor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"companyName" : companyName, @"contactName" : contactName, @"telephone" : telephone, @"email" : email, @"website" : website, @"bio" : bio, @"logo" : logo, @"category" : category, @"ignoreCache" : ignoreCache, @"exhibitor" : exhibitor}};

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

- (void)editAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value withExhibitor:(NSString *)exhibitor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil && exhibitor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"key" : key}, @"POST" : @{@"value" : value, @"exhibitor" : exhibitor}};

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

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized withCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order withExhibitor:(NSString *)exhibitor {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && categorized != nil && companyName != nil && name != nil && email != nil && telephone != nil && order != nil && exhibitor != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"categorized" : categorized, @"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone, @"order" : order}, @"POST" : @{@"exhibitor" : exhibitor}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && categorized != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"categorized" : categorized}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithCategorized:(NSString *)categorized withCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && categorized != nil && companyName != nil && name != nil && email != nil && telephone != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"categorized" : categorized, @"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone, @"order" : order}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)findAtEventWithCategorized:(NSString *)categorized {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && categorized != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"categorized" : categorized}};

		[self objectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"sponsor" method:@"get" attributes:attributes];
	}
}

- (void)getAtSponsor:(NSInteger)sponsorID {



	NSDictionary *attributes = @{@"GET" : @{@"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

	[self objectWithModule:@"sponsor" method:@"get" attributes:attributes];
}

- (void)redeemAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"sponsor" method:@"redeem" attributes:attributes];
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
