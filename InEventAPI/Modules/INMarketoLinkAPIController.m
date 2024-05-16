#import "INMarketoLinkAPIController.h"

@implementation INMarketoLinkAPIController

#pragma mark - MarketoLink

- (void)bindAuthenticatedAtEventAtList:(NSInteger)listID withLinkId:(NSString *)linkId withMode:(NSString *)mode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && linkId != nil && mode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"linkId" : linkId, @"mode" : mode}};

		[self objectWithModule:@"marketo.link" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithLinkId:(NSString *)linkId withMode:(NSString *)mode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && linkId != nil && mode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"linkId" : linkId, @"mode" : mode}};

		[self objectWithModule:@"marketo.link" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"marketo.link" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID]}};

		[self objectWithModule:@"marketo.link" method:@"dismiss" attributes:attributes];
	}
}

- (void)createProgramAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"marketo.link" method:@"createProgram" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"marketo.link" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID]}};

		[self objectWithModule:@"marketo.link" method:@"get" attributes:attributes];
	}
}

- (void)syncAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID]}};

		[self objectWithModule:@"marketo.link" method:@"sync" attributes:attributes];
	}
}

- (void)syncTokensAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID]}};

		[self objectWithModule:@"marketo.link" method:@"syncTokens" attributes:attributes];
	}
}

- (void)syncStatusesAuthenticatedAtMarketoLink:(NSInteger)marketoLinkID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"marketoLinkID" : [NSString stringWithFormat:@"%ld", (long)marketoLinkID]}};

		[self objectWithModule:@"marketo.link" method:@"syncStatuses" attributes:attributes];
	}
}

- (void)setActivitySyncAuthenticatedAtEventWithActive:(NSString *)active {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && active != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"active" : active}};

		[self objectWithModule:@"marketo.link" method:@"setActivitySync" attributes:attributes];
	}
}

- (void)setActivitySyncForActivityAuthenticatedAtEventAtActivity:(NSInteger)activityID withActive:(NSString *)active {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && active != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"active" : active}};

		[self objectWithModule:@"marketo.link" method:@"setActivitySyncForActivity" attributes:attributes];
	}
}

- (void)syncActivityAuthenticatedAtEventAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"marketo.link" method:@"syncActivity" attributes:attributes];
	}
}

@end
