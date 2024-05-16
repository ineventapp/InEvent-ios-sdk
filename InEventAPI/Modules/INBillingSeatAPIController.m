#import "INBillingSeatAPIController.h"

@implementation INBillingSeatAPIController

#pragma mark - BillingSeat

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"email" : email}};

		[self objectWithModule:@"billing.seat" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"billing.seat" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtBillingSeat:(NSInteger)billingSeatID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"billingSeatID" : [NSString stringWithFormat:@"%ld", (long)billingSeatID]}};

		[self objectWithModule:@"billing.seat" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"query" : query}};

		[self objectWithModule:@"billing.seat" method:@"find" attributes:attributes];
	}
}

@end
