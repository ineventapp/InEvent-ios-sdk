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

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTarget:(NSString *)target {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"target" : target}};

		[self objectWithModule:@"download" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithTarget:(NSString *)target {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target}};

		[self objectWithModule:@"download" method:@"find" attributes:attributes];
	}
}

@end
