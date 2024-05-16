#import "INRegistrationBlacklistAPIController.h"

@implementation INRegistrationBlacklistAPIController

#pragma mark - RegistrationBlacklist

- (void)createAuthenticatedAtEventWithDomain:(NSString *)domain {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && domain != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"domain" : domain}};

		[self objectWithModule:@"registration.blacklist" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtRegistrationBlacklist:(NSInteger)registrationBlacklistID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"registrationBlacklistID" : [NSString stringWithFormat:@"%ld", (long)registrationBlacklistID], @"eventID" : eventID}};

		[self objectWithModule:@"registration.blacklist" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"registration.blacklist" method:@"find" attributes:attributes];
	}
}

@end
