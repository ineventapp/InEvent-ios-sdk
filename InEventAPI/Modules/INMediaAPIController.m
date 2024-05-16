#import "INMediaAPIController.h"

@implementation INMediaAPIController

#pragma mark - Media

- (void)createAuthenticatedWithUrl:(NSString *)url withType:(NSString *)type withSize:(NSString *)size {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && url != nil && type != nil && size != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"url" : url, @"type" : type, @"size" : size}};

		[self objectWithModule:@"media" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"media" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtMedia:(NSInteger)mediaID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"mediaID" : [NSString stringWithFormat:@"%ld", (long)mediaID]}};

		[self objectWithModule:@"media" method:@"get" attributes:attributes];
	}
}

- (void)generateUploadUrlAuthenticatedWithFilename:(NSString *)filename withFolder:(NSString *)folder withContentType:(NSString *)contentType {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && filename != nil && folder != nil && contentType != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"filename" : filename, @"folder" : folder, @"contentType" : contentType}};

		[self objectWithModule:@"media" method:@"generateUploadUrl" attributes:attributes];
	}
}

@end
