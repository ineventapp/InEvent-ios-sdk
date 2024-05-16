#import "INCertificateAPIController.h"

@implementation INCertificateAPIController

#pragma mark - Certificate

- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withTemplate:(NSString *)template withAchievementKey:(NSString *)achievementKey withLogo:(NSString *)logo withBackground:(NSString *)background {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && template != nil && achievementKey != nil && logo != nil && background != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"title" : title, @"template" : template, @"achievementKey" : achievementKey, @"logo" : logo, @"background" : background}};

		[self objectWithModule:@"certificate" method:@"create" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtEventAtCertificate:(NSInteger)certificateID withTitle:(NSString *)title {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID]}, @"POST" : @{@"title" : title}};

		[self objectWithModule:@"certificate" method:@"copy" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCertificate:(NSInteger)certificateID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"certificate" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCertificate:(NSInteger)certificateID withKey:(NSString *)key withOverride:(NSString *)override withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && override != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID], @"key" : key, @"override" : override}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"certificate" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCertificate:(NSInteger)certificateID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID]}};

		[self objectWithModule:@"certificate" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"certificate" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCertificate:(NSInteger)certificateID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID]}};

		[self objectWithModule:@"certificate" method:@"get" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCertificate:(NSInteger)certificateID withOverride:(NSString *)override {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && override != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID], @"override" : override}};

		[self objectWithModule:@"certificate" method:@"get" attributes:attributes];
	}
}

@end
