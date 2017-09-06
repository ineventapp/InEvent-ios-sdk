#import "INPersonAPIController.h"

@implementation INPersonAPIController

#pragma mark - Person

- (void)createWithName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withLanguage:(NSString *)language {


	if (name != nil && username != nil && password != nil && language != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"username" : username, @"password" : password, @"language" : language}};

		[self objectWithModule:@"person" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}};

		[self objectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withPassword:(NSString *)password {


	if (username != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)externalSignInWithUsername:(NSString *)username withCompany:(NSString *)company withPassword:(NSString *)password {


	if (username != nil && company != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"company" : company}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"externalSignIn" attributes:attributes];
	}
}

- (void)sendRecoveryWithUsername:(NSString *)username atCompany:(NSInteger)companyID {


	if (username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && oldPassword != nil && newPassword != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"oldPassword" : oldPassword, @"newPassword" : newPassword}};

		[self objectWithModule:@"person" method:@"changePassword" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithNewPassword:(NSString *)newPassword {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && newPassword != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"newPassword" : newPassword}};

		[self objectWithModule:@"person" method:@"changePassword" attributes:attributes];
	}
}

- (void)changeLevelAuthenticatedForPerson:(NSInteger)personID withNewLevel:(NSString *)newLevel {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && newLevel != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}, @"POST" : @{@"newLevel" : newLevel}};

		[self objectWithModule:@"person" method:@"changeLevel" attributes:attributes];
	}
}

- (void)terminateAuthenticatedWithPassword:(NSString *)password {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"terminate" attributes:attributes];
	}
}

- (void)subscribeAuthenticatedWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};

		[self objectWithModule:@"person" method:@"subscribe" attributes:attributes];
	}
}

- (void)unsubscribeAuthenticatedWithEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"email" : email}};

		[self objectWithModule:@"person" method:@"unsubscribe" attributes:attributes];
	}
}

- (void)sendFeedbackAuthenticatedAtCompany:(NSInteger)companyID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"person" method:@"sendFeedback" attributes:attributes];
	}
}

@end