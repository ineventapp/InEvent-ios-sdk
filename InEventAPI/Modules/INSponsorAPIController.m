#import "INSponsorAPIController.h"

@implementation INSponsorAPIController

#pragma mark - Sponsor

- (void)editAuthenticatedAtSponsor:(NSInteger)sponsorID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"sponsor" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithCompanyName:(NSString *)companyName withName:(NSString *)name withEmail:(NSString *)email withTelephone:(NSString *)telephone withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && companyName != nil && name != nil && email != nil && telephone != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"companyName" : companyName, @"name" : name, @"email" : email, @"telephone" : telephone, @"order" : order}};

		[self JSONObjectWithModule:@"sponsor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtSponsor:(NSInteger)sponsorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

		[self JSONObjectWithModule:@"sponsor" method:@"get" attributes:attributes];
	}
}

@end