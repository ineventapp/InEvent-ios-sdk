#import "INPersonTagAPIController.h"

@implementation INPersonTagAPIController

#pragma mark - PersonTag

- (void)bindAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self JSONObjectWithModule:@"person.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self JSONObjectWithModule:@"person.tag" method:@"dismiss" attributes:attributes];
	}
}

@end