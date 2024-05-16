#import "INStatusTypeAPIController.h"

@implementation INStatusTypeAPIController

#pragma mark - StatusType

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name}};

		[self objectWithModule:@"status.type" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtStatusType:(NSInteger)statusTypeID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"statusTypeID" : [NSString stringWithFormat:@"%ld", (long)statusTypeID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"status.type" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtStatusType:(NSInteger)statusTypeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"statusTypeID" : [NSString stringWithFormat:@"%ld", (long)statusTypeID]}};

		[self objectWithModule:@"status.type" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"status.type" method:@"find" attributes:attributes];
	}
}

@end
