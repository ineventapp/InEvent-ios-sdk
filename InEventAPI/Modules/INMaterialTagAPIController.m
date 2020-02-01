#import "INMaterialTagAPIController.h"

@implementation INMaterialTagAPIController

#pragma mark - MaterialTag

- (void)bindAuthenticatedAtMaterial:(NSInteger)materialID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"material.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtMaterial:(NSInteger)materialID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"material.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtMaterial:(NSInteger)materialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID]}};

		[self objectWithModule:@"material.tag" method:@"find" attributes:attributes];
	}
}

@end
