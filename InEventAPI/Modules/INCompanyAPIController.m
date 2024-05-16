#import "INCompanyAPIController.h"

@implementation INCompanyAPIController

#pragma mark - Company

- (void)createAuthenticatedWithPlan:(NSString *)plan withCompanyName:(NSString *)companyName withAppIcon:(NSString *)appIcon withRegion:(NSString *)region {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && plan != nil && companyName != nil && appIcon != nil && region != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"plan" : plan, @"companyName" : companyName, @"appIcon" : appIcon, @"region" : region}};

		[self objectWithModule:@"company" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedWithPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"company" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"company" method:@"edit" attributes:attributes];
	}
}

- (void)editWithOnboardingToken:(NSString *)onboardingToken withKey:(NSString *)key withValue:(NSString *)value {


	if (onboardingToken != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"onboardingToken" : onboardingToken, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"company" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"selection" : selection}};

		[self objectWithModule:@"company" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getAtCompany:(NSInteger)companyID {



	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

	[self objectWithModule:@"company" method:@"get" attributes:attributes];
}

- (void)getAuthenticatedWithNamespace:(NSString *)namespace {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && namespace != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"namespace" : namespace}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getWithNamespace:(NSString *)namespace {


	if (namespace != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"namespace" : namespace}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedWithNickname:(NSString *)nickname {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"nickname" : nickname}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getWithNickname:(NSString *)nickname {


	if (nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"nickname" : nickname}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getWithOnboardingToken:(NSString *)onboardingToken {


	if (onboardingToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"onboardingToken" : onboardingToken}};

		[self objectWithModule:@"company" method:@"get" attributes:attributes];
	}
}

- (void)getColorsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company" method:@"getColors" attributes:attributes];
	}
}

@end
