#import "INAdAPIController.h"

@implementation INAdAPIController

#pragma mark - Ad

- (void)createAuthenticatedAtSponsorship:(NSInteger)sponsorshipID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorshipID" : [NSString stringWithFormat:@"%ld", (long)sponsorshipID]}};

		[self JSONObjectWithModule:@"ad" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtAd:(NSInteger)adID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"adID" : [NSString stringWithFormat:@"%ld", (long)adID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"ad" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAd:(NSInteger)adID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"adID" : [NSString stringWithFormat:@"%ld", (long)adID]}};

		[self JSONObjectWithModule:@"ad" method:@"remove" attributes:attributes];
	}
}

- (void)findAtSponsorship:(NSInteger)sponsorshipID {



	NSDictionary *attributes = @{@"GET" : @{@"sponsorshipID" : [NSString stringWithFormat:@"%ld", (long)sponsorshipID]}};

	[self JSONObjectWithModule:@"ad" method:@"find" attributes:attributes];
}

- (void)findAtEvent {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self JSONObjectWithModule:@"ad" method:@"find" attributes:attributes];
	}
}

@end