#import "INPersonAPIController.h"

@implementation INPersonAPIController

#pragma mark - Person

- (void)createWithUsername:(NSString *)username withPassword:(NSString *)password withLanguage:(NSString *)language {


	if (username != nil && password != nil && language != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"username" : username, @"password" : password, @"language" : language}};

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

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"person" method:@"edit" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedForPerson:(NSInteger)personID atCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"get" attributes:attributes];
	}
}

- (void)signInWithUsername:(NSString *)username withSecretCode:(NSString *)secretCode {


	if (username != nil && secretCode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username}, @"POST" : @{@"secretCode" : secretCode}};

		[self objectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withPassword:(NSString *)password {


	if (username != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withVerifyBy:(NSString *)verifyBy withPassword:(NSString *)password {


	if (username != nil && verifyBy != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"verifyBy" : verifyBy}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)signInWithUsername:(NSString *)username atCompany:(NSInteger)companyID withVerifyBy:(NSString *)verifyBy withCode:(NSString *)code withPassword:(NSString *)password {


	if (username != nil && verifyBy != nil && code != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"verifyBy" : verifyBy, @"code" : code}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"signIn" attributes:attributes];
	}
}

- (void)externalSignInWithUsername:(NSString *)username withCompany:(NSString *)company withPassword:(NSString *)password {


	if (username != nil && company != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"company" : company}, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"externalSignIn" attributes:attributes];
	}
}

- (void)enableTwoFactorAuthenticatedWithVerifyBy:(NSString *)verifyBy {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && verifyBy != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"verifyBy" : verifyBy}};

		[self objectWithModule:@"person" method:@"enableTwoFactor" attributes:attributes];
	}
}

- (void)enableTwoFactorAuthenticatedWithVerifyBy:(NSString *)verifyBy withCode:(NSString *)code {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && verifyBy != nil && code != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"verifyBy" : verifyBy, @"code" : code}};

		[self objectWithModule:@"person" method:@"enableTwoFactor" attributes:attributes];
	}
}

- (void)disableTwoFactorAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"person" method:@"disableTwoFactor" attributes:attributes];
	}
}

- (void)requestTrialAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"person" method:@"requestTrial" attributes:attributes];
	}
}

- (void)sendRecoveryAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)sendRecoveryAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)sendRecoveryWithUsername:(NSString *)username atCompany:(NSInteger)companyID {


	if (username != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)sendRecoveryAtEventWithUsername:(NSString *)username {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (username != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"username" : username, @"eventID" : eventID}};

		[self objectWithModule:@"person" method:@"sendRecovery" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithOldPassword:(NSString *)oldPassword withNewPassword:(NSString *)newPassword {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && oldPassword != nil && newPassword != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"oldPassword" : oldPassword, @"newPassword" : newPassword}};

		[self objectWithModule:@"person" method:@"changePassword" attributes:attributes];
	}
}

- (void)changePasswordAuthenticatedWithNewPassword:(NSString *)newPassword {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && newPassword != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"newPassword" : newPassword}};

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

- (void)changeLevelAuthenticatedWithUsername:(NSString *)username withNewLevel:(NSString *)newLevel {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && username != nil && newLevel != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"username" : username}, @"POST" : @{@"newLevel" : newLevel}};

		[self objectWithModule:@"person" method:@"changeLevel" attributes:attributes];
	}
}

- (void)exportDataAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"person" method:@"exportData" attributes:attributes];
	}
}

- (void)terminateAccountAuthenticatedWithPassword:(NSString *)password {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }, @"POST" : @{@"password" : password}};

		[self objectWithModule:@"person" method:@"terminateAccount" attributes:attributes];
	}
}

- (void)sendFeedbackAuthenticatedAtCompany:(NSInteger)companyID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"person" method:@"sendFeedback" attributes:attributes];
	}
}

- (void)sendBugAuthenticatedAtEventAtCompany:(NSInteger)companyID withPlatform:(NSString *)platform withPagelink:(NSString *)pagelink withBug:(NSString *)bug withSteps:(NSString *)steps withExtra:(NSString *)extra {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && platform != nil && pagelink != nil && bug != nil && steps != nil && extra != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}, @"POST" : @{@"platform" : platform, @"pagelink" : pagelink, @"bug" : bug, @"steps" : steps, @"extra" : extra}};

		[self objectWithModule:@"person" method:@"sendBug" attributes:attributes];
	}
}

- (void)getBugAuthenticatedWithConversationId:(NSString *)conversationId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && conversationId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"conversationId" : conversationId}};

		[self objectWithModule:@"person" method:@"getBug" attributes:attributes];
	}
}

- (void)sendTroubleshootAuthenticatedAtEventWithMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"person" method:@"sendTroubleshoot" attributes:attributes];
	}
}

- (void)setPreferenceAuthenticatedWithKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"person" method:@"setPreference" attributes:attributes];
	}
}

@end
