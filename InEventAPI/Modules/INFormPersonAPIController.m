#import "INFormPersonAPIController.h"

@implementation INFormPersonAPIController

#pragma mark - FormPerson

- (void)bindAuthenticatedAtForm:(NSInteger)formID forPerson:(NSInteger)personID withRole:(NSString *)role {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && role != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}, @"POST" : @{@"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"role" : role}};

		[self objectWithModule:@"form.person" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtForm:(NSInteger)formID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}, @"POST" : @{@"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"form.person" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtForm:(NSInteger)formID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"formID" : [NSString stringWithFormat:@"%ld", (long)formID]}};

		[self objectWithModule:@"form.person" method:@"find" attributes:attributes];
	}
}

@end
