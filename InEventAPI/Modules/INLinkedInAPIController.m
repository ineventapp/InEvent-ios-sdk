#import "INLinkedInAPIController.h"

@implementation INLinkedInAPIController

#pragma mark - LinkedIn

- (void)signInWithLinkedInToken:(NSString *)linkedInToken {


	if (linkedInToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};

		[self JSONObjectWithModule:@"linkedIn" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatedWithLinkedInToken:(NSString *)linkedInToken withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && linkedInToken != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"linkedInToken" : linkedInToken, @"selection" : selection}};

		[self JSONObjectWithModule:@"linkedIn" method:@"update" attributes:attributes];
	}
}

- (void)generateAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"linkedIn" method:@"generate" attributes:attributes];
	}
}

@end