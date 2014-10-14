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

	if (linkedInToken != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken, @"selection" : selection}};

		[self JSONObjectWithModule:@"linkedIn" method:@"update" attributes:attributes];
	}
}

- (void)generateAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"linkedIn" method:@"generate" attributes:attributes];
}

@end