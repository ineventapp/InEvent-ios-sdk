#import "INDynamicsActivityAPIController.h"

@implementation INDynamicsActivityAPIController

#pragma mark - DynamicsActivity

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withMsdSessionId:(NSString *)msdSessionId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && msdSessionId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"msdSessionId" : msdSessionId}};

		[self objectWithModule:@"dynamics.activity" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"dynamics.activity" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"dynamics.activity" method:@"find" attributes:attributes];
	}
}

@end
