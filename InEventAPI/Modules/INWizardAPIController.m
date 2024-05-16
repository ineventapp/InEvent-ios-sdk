#import "INWizardAPIController.h"

@implementation INWizardAPIController

#pragma mark - Wizard

- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description withLink:(NSString *)link {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && description != nil && link != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"title" : title, @"description" : description, @"link" : link}};

		[self objectWithModule:@"wizard" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtWizard:(NSInteger)wizardID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"wizardID" : [NSString stringWithFormat:@"%ld", (long)wizardID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"wizard" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"wizard" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtWizard:(NSInteger)wizardID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"wizardID" : [NSString stringWithFormat:@"%ld", (long)wizardID]}};

		[self objectWithModule:@"wizard" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"wizard" method:@"find" attributes:attributes];
	}
}

@end
