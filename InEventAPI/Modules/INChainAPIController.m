#import "INChainAPIController.h"

@implementation INChainAPIController

#pragma mark - Chain

- (void)createAuthenticatedAtEventWithName:(NSString *)name withConstraint:(NSString *)constraint {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && constraint != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"constraint" : constraint}};

		[self objectWithModule:@"chain" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtChain:(NSInteger)chainID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"chainID" : [NSString stringWithFormat:@"%ld", (long)chainID]}};

		[self objectWithModule:@"chain" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"chain" method:@"find" attributes:attributes];
	}
}

@end
