#import "INFilterAPIController.h"

@implementation INFilterAPIController

#pragma mark - Filter

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withTarget:(NSString *)target withFilter:(NSString *)filter {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && target != nil && filter != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"target" : target, @"filter" : filter}};

		[self objectWithModule:@"filter" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtFilter:(NSInteger)filterID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"filterID" : [NSString stringWithFormat:@"%ld", (long)filterID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"filter" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtFilter:(NSInteger)filterID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"filterID" : [NSString stringWithFormat:@"%ld", (long)filterID]}};

		[self objectWithModule:@"filter" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withTarget:(NSString *)target {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"target" : target}};

		[self objectWithModule:@"filter" method:@"find" attributes:attributes];
	}
}

@end
