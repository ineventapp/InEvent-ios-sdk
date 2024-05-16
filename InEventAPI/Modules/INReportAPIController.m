#import "INReportAPIController.h"

@implementation INReportAPIController

#pragma mark - Report

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withFilter:(NSString *)filter {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && filter != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"filter" : filter}};

		[self objectWithModule:@"report" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtReport:(NSInteger)reportID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"report" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtReport:(NSInteger)reportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}};

		[self objectWithModule:@"report" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection}};

		[self objectWithModule:@"report" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtReport:(NSInteger)reportID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}};

		[self objectWithModule:@"report" method:@"get" attributes:attributes];
	}
}

- (void)snapshotAuthenticatedAtReport:(NSInteger)reportID withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}, @"POST" : @{@"name" : name}};

		[self objectWithModule:@"report" method:@"snapshot" attributes:attributes];
	}
}

@end
