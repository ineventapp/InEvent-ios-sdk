#import "INErrorAPIController.h"

@implementation INErrorAPIController

#pragma mark - Error

- (void)createAuthenticatedWithPlatform:(NSString *)platform withMessage:(NSString *)message withSTACK_TRACE:(NSString *)STACK_TRACE withINITIAL_CONFIGURATION:(NSString *)INITIAL_CONFIGURATION withBUILD:(NSString *)BUILD {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && platform != nil && message != nil && STACK_TRACE != nil && INITIAL_CONFIGURATION != nil && BUILD != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"platform" : platform, @"message" : message, @"STACK_TRACE" : STACK_TRACE, @"INITIAL_CONFIGURATION" : INITIAL_CONFIGURATION, @"BUILD" : BUILD}};

		[self objectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedWithJson:(NSString *)json {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && json != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"json" : json}};

		[self objectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withPlatform:(NSString *)platform withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && platform != nil && dateBegin != nil && dateEnd != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"platform" : platform, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"query" : query}};

		[self objectWithModule:@"error" method:@"find" attributes:attributes];
	}
}

@end
