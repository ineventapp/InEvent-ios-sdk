#import "INSponsorTagAPIController.h"

@implementation INSponsorTagAPIController

#pragma mark - SponsorTag

- (void)bindAuthenticatedAtSponsor:(NSInteger)sponsorID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"sponsor.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtSponsor:(NSInteger)sponsorID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"sponsor.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAtSponsor:(NSInteger)sponsorID {



	NSDictionary *attributes = @{@"GET" : @{@"sponsorID" : [NSString stringWithFormat:@"%ld", (long)sponsorID]}};

	[self objectWithModule:@"sponsor.tag" method:@"find" attributes:attributes];
}

@end