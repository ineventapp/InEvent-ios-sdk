#import "INLinkedinAPIController.h"

@implementation INLinkedinAPIController

#pragma mark - Linkedin

- (void)signInWithLinkedInToken:(NSString *)linkedInToken {


	if (linkedInToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};

		[self objectWithModule:@"linkedin" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatedWithLinkedInToken:(NSString *)linkedInToken withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && linkedInToken != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"linkedInToken" : linkedInToken, @"selection" : selection}};

		[self objectWithModule:@"linkedin" method:@"update" attributes:attributes];
	}
}

- (void)generateAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"linkedin" method:@"generate" attributes:attributes];
	}
}

@end