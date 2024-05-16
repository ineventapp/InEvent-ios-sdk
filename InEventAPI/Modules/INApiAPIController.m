#import "INApiAPIController.h"

@implementation INApiAPIController

#pragma mark - Api

- (void)describeAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"api" method:@"describe" attributes:attributes];
	}
}

@end
