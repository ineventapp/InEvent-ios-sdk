#import "INFacebookAPIController.h"

@implementation INFacebookAPIController

#pragma mark - Facebook

- (void)signInWithFacebookToken:(NSString *)facebookToken {


	if (facebookToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};

		[self objectWithModule:@"facebook" method:@"signIn" attributes:attributes];
	}
}

- (void)updateAuthenticatedWithFacebookToken:(NSString *)facebookToken withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && facebookToken != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"facebookToken" : facebookToken, @"selection" : selection}};

		[self objectWithModule:@"facebook" method:@"update" attributes:attributes];
	}
}

@end