#import "INErrorAPIController.h"

@implementation INErrorAPIController

#pragma mark - Error

- (void)createAuthenticatedWithPlatform:(NSString *)platform withMessage:(NSString *)message withSTACK_TRACE:(NSString *)STACK_TRACE withINITIAL_CONFIGURATION:(NSString *)INITIAL_CONFIGURATION withBUILD:(NSString *)BUILD {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && platform != nil && message != nil && STACK_TRACE != nil && INITIAL_CONFIGURATION != nil && BUILD != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"platform" : platform, @"message" : message, @"STACK_TRACE" : STACK_TRACE, @"INITIAL_CONFIGURATION" : INITIAL_CONFIGURATION, @"BUILD" : BUILD}};

		[self JSONObjectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

- (void)createWithPlatform:(NSString *)platform withMessage:(NSString *)message {


	if (platform != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"platform" : platform, @"message" : message}};

		[self JSONObjectWithModule:@"error" method:@"create" attributes:attributes];
	}
}

@end