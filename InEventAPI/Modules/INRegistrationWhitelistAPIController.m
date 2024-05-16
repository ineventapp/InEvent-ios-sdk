#import "INRegistrationWhitelistAPIController.h"

@implementation INRegistrationWhitelistAPIController

#pragma mark - RegistrationWhitelist

- (void)createAuthenticatedAtEventWithDomain:(NSString *)domain {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && domain != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"domain" : domain}};

		[self objectWithModule:@"registration.whitelist" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtRegistrationWhitelist:(NSInteger)registrationWhitelistID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"registrationWhitelistID" : [NSString stringWithFormat:@"%ld", (long)registrationWhitelistID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"registration.whitelist" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtRegistrationWhitelist:(NSInteger)registrationWhitelistID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"registrationWhitelistID" : [NSString stringWithFormat:@"%ld", (long)registrationWhitelistID]}};

		[self objectWithModule:@"registration.whitelist" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"registration.whitelist" method:@"find" attributes:attributes];
	}
}

- (void)checkAtEventWithType:(NSString *)type withEmail:(NSString *)email {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && type != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"type" : type}, @"POST" : @{@"email" : email}};

		[self objectWithModule:@"registration.whitelist" method:@"check" attributes:attributes];
	}
}

- (void)checkAtEventWithType:(NSString *)type withDomain:(NSString *)domain {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && type != nil && domain != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"type" : type}, @"POST" : @{@"domain" : domain}};

		[self objectWithModule:@"registration.whitelist" method:@"check" attributes:attributes];
	}
}

@end
