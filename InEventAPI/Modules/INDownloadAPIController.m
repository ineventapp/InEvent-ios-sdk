#import "INDownloadAPIController.h"

@implementation INDownloadAPIController

#pragma mark - Download

- (void)removeAuthenticatedAtDownload:(NSInteger)downloadID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"downloadID" : [NSString stringWithFormat:@"%ld", (long)downloadID]}};

		[self objectWithModule:@"download" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"download" method:@"find" attributes:attributes];
	}
}

@end
