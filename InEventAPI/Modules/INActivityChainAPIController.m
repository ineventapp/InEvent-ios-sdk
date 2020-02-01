#import "INActivityChainAPIController.h"

@implementation INActivityChainAPIController

#pragma mark - ActivityChain

- (void)bindAuthenticatedAtChain:(NSInteger)chainID atActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"chainID" : [NSString stringWithFormat:@"%ld", (long)chainID], @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.chain" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtChain:(NSInteger)chainID atActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"chainID" : [NSString stringWithFormat:@"%ld", (long)chainID], @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.chain" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.chain" method:@"find" attributes:attributes];
	}
}

- (void)findChainedActivitiesAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.chain" method:@"findChainedActivities" attributes:attributes];
	}
}

@end
