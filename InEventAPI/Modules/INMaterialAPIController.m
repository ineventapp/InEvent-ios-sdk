#import "INMaterialAPIController.h"

@implementation INMaterialAPIController

#pragma mark - Material

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withIcon:(NSString *)icon withUrl:(NSString *)url {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && icon != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}, @"POST" : @{@"name" : name, @"icon" : icon, @"url" : url}};

		[self JSONObjectWithModule:@"material" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID]}};

		[self JSONObjectWithModule:@"material" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self JSONObjectWithModule:@"material" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMaterial:(NSInteger)materialID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%ld", (long)materialID]}};

		[self JSONObjectWithModule:@"material" method:@"get" attributes:attributes];
	}
}

@end