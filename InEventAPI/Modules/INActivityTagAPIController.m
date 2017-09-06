#import "INActivityTagAPIController.h"

@implementation INActivityTagAPIController

#pragma mark - ActivityTag

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"activity.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"activity.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAtActivity:(NSInteger)activityID {



	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

	[self objectWithModule:@"activity.tag" method:@"find" attributes:attributes];
}

@end