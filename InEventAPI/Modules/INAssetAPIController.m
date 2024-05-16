#import "INAssetAPIController.h"

@implementation INAssetAPIController

#pragma mark - Asset

- (void)createAuthenticatedAtEventAtLive:(NSInteger)liveID withType:(NSString *)type withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"type" : type, @"value" : value}};

		[self objectWithModule:@"asset" method:@"create" attributes:attributes];
	}
}

- (void)createOrUpdateAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"value" : value}};

		[self objectWithModule:@"asset" method:@"createOrUpdate" attributes:attributes];
	}
}

- (void)editAuthenticatedAtAsset:(NSInteger)assetID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"assetID" : [NSString stringWithFormat:@"%ld", (long)assetID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"asset" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAsset:(NSInteger)assetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"assetID" : [NSString stringWithFormat:@"%ld", (long)assetID]}};

		[self objectWithModule:@"asset" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"type" : type, @"value" : value}};

		[self objectWithModule:@"asset" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithType:(NSString *)type withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"type" : type, @"order" : order}};

		[self objectWithModule:@"asset" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtAsset:(NSInteger)assetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"assetID" : [NSString stringWithFormat:@"%ld", (long)assetID]}};

		[self objectWithModule:@"asset" method:@"get" attributes:attributes];
	}
}

@end
