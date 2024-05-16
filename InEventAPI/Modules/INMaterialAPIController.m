#import "INMaterialAPIController.h"

@implementation INMaterialAPIController

#pragma mark - Material

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && extension != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"name" : name, @"extension" : extension, @"url" : url}};

		[self objectWithModule:@"material" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && extension != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}, @"POST" : @{@"name" : name, @"extension" : extension, @"url" : url}};

		[self objectWithModule:@"material" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && extension != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"extension" : extension, @"url" : url}};

		[self objectWithModule:@"material" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtMaterial:(NSInteger)materialID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"material" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID atActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID], @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"material" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID atSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID], @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"material" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID]}};

		[self objectWithModule:@"material" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID withQuery:(NSString *)query withWithAnalytics:(NSString *)withAnalytics withPaginated:(NSString *)paginated withOffset:(NSString *)offset {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil && withAnalytics != nil && paginated != nil && offset != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"query" : query, @"withAnalytics" : withAnalytics, @"paginated" : paginated, @"offset" : offset}};

		[self objectWithModule:@"material" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withQuery:(NSString *)query withWithAnalytics:(NSString *)withAnalytics {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil && withAnalytics != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"query" : query, @"withAnalytics" : withAnalytics}};

		[self objectWithModule:@"material" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"material" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMaterial:(NSInteger)materialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID]}};

		[self objectWithModule:@"material" method:@"get" attributes:attributes];
	}
}

- (void)analyticsAuthenticatedAtEventAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"material" method:@"analytics" attributes:attributes];
	}
}

- (void)analyticsAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self objectWithModule:@"material" method:@"analytics" attributes:attributes];
	}
}

@end
