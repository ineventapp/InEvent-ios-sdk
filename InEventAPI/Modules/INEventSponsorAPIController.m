#import "INEventSponsorAPIController.h"

@implementation INEventSponsorAPIController

#pragma mark - EventSponsor

- (void)bindAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && companyName != nil && name != nil && email != nil && telephone != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"dismiss" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"operate" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withPosition:(NSString *)position withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && companyName != nil && name != nil && email != nil && telephone != nil && position != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone, @"position" : position, @"order" : order}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSponsorship:(NSInteger)sponsorshipID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorshipID" : [NSString stringWithFormat:@"%ld", (long)sponsorshipID]}};

		[self JSONObjectWithModule:@"event.sponsor" method:@"get" attributes:attributes];
	}
}

@end