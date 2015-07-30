#import "INPersonAPIController.h"

@implementation INPersonAPIController

#pragma mark - Person

- (void)createWithName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password {


	if (name != nil && email != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"email" : email, @"password" : password}};

		[self JSONObjectWithModule:@"person" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self JSONObjectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self JSONObjectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self JSONObjectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)signInWithEmail:(NSString *)email withPassword:(NSString *)password {


	if (email != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"email" : email, @"password" : password}};

		[self JSONObjectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)verifyEmailWithEmail:(NSString *)email {


	if (email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};

		[self JSONObjectWithModule:@"person" method:@"verifyEmail" attributes:attributes];
	}
}

- (void)sendRecoveryWithEmail:(NSString *)email {


	if (email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"email" : email}};

		[self JSONObjectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && oldPassword != nil && newPassword != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"oldPassword" : oldPassword}, @"POST" : @{@"newPassword" : newPassword}};

		[self JSONObjectWithModule:@"person" method:@"changePassword" attributes:attributes];
	}
}

- (void)subscribeAuthenticatedWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};

		[self JSONObjectWithModule:@"person" method:@"subscribe" attributes:attributes];
	}
}

- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};

		[self JSONObjectWithModule:@"person" method:@"unsubscribe" attributes:attributes];
	}
}

- (void)sendFeedbackAuthenticatedWithMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"person" method:@"sendFeedback" attributes:attributes];
	}
}

@end