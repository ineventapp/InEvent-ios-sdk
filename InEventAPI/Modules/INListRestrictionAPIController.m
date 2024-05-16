#import "INListRestrictionAPIController.h"

@implementation INListRestrictionAPIController

#pragma mark - ListRestriction

- (void)createAuthenticatedAtEventWithSource:(NSString *)source atList:(NSInteger)listID atUnmatch:(NSInteger)unmatchID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}, @"POST" : @{@"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"unmatchID" : [NSString stringWithFormat:@"%ld", (long)unmatchID]}};

		[self objectWithModule:@"list.restriction" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtListRestriction:(NSInteger)listRestrictionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"listRestrictionID" : [NSString stringWithFormat:@"%ld", (long)listRestrictionID]}};

		[self objectWithModule:@"list.restriction" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"source" : source}};

		[self objectWithModule:@"list.restriction" method:@"find" attributes:attributes];
	}
}

@end
