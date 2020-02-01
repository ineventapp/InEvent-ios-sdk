#import "INUploadAPIController.h"

@implementation INUploadAPIController

#pragma mark - Upload

- (void)removeAuthenticatedAtUpload:(NSInteger)uploadID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"uploadID" : [NSString stringWithFormat:@"%ld", (long)uploadID]}};

		[self objectWithModule:@"upload" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"upload" method:@"find" attributes:attributes];
	}
}

@end
