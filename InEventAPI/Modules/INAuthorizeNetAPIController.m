#import "INAuthorizeNetAPIController.h"

@implementation INAuthorizeNetAPIController

#pragma mark - AuthorizeNet

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withApiId:(NSString *)apiId withTransactionKey:(NSString *)transactionKey withSandbox:(NSString *)sandbox {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && apiId != nil && transactionKey != nil && sandbox != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"apiId" : apiId, @"transactionKey" : transactionKey, @"sandbox" : sandbox}};

		[self objectWithModule:@"authorize.net" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"authorize.net" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"authorize.net" method:@"get" attributes:attributes];
	}
}

- (void)currenciesAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"authorize.net" method:@"currencies" attributes:attributes];
	}
}

@end
