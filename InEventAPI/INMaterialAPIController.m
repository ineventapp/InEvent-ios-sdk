#import "INMaterialAPIController.h"

@implementation INMaterialAPIController

#pragma mark - Material

- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withIcon:(NSString *)icon withUrl:(NSString *)url {

	if (name != nil && icon != nil && url != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"name" : name, @"icon" : icon, @"url" : url}};

		[self JSONObjectWithModule:@"material" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID {

	NSDictionary *attributes = @{@"GET" : @{@"materialID" : [NSString stringWithFormat:@"%d", materialID]}};

	[self JSONObjectWithModule:@"material" method:@"remove" attributes:attributes];
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSDictionary *attributes = @{@"GET" : @{@"activityID" : [NSString stringWithFormat:@"%d", activityID]}};

	[self JSONObjectWithModule:@"material" method:@"find" attributes:attributes];
}

- (void)getAuthenticatedAtMaterial:(NSInteger)materialID {

	NSDictionary *attributes = @{@"GET" : @{@"materialID" : [NSString stringWithFormat:@"%d", materialID]}};

	[self JSONObjectWithModule:@"material" method:@"get" attributes:attributes];
}

@end