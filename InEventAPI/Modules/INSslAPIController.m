#import "INSslAPIController.h"

@implementation INSslAPIController

#pragma mark - Ssl

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && domain != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"domain" : domain}};

		[self objectWithModule:@"ssl" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && domain != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"domain" : domain}};

		[self objectWithModule:@"ssl" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"sslID" : [NSString stringWithFormat:@"%ld", (long)sslID]}};

		[self objectWithModule:@"ssl" method:@"get" attributes:attributes];
	}
}

- (void)challengeAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"sslID" : [NSString stringWithFormat:@"%ld", (long)sslID]}};

		[self objectWithModule:@"ssl" method:@"challenge" attributes:attributes];
	}
}

- (void)verifyAuthenticatedAtCompany:(NSInteger)companyID atSsl:(NSInteger)sslID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"sslID" : [NSString stringWithFormat:@"%ld", (long)sslID]}};

		[self objectWithModule:@"ssl" method:@"verify" attributes:attributes];
	}
}

@end
