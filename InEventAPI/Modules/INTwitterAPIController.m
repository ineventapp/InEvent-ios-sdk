#import "INTwitterAPIController.h"

@implementation INTwitterAPIController

#pragma mark - Twitter

- (void)signInWithAccessToken:(NSString *)accessToken withAccessTokenSecret:(NSString *)accessTokenSecret {


	if (accessToken != nil && accessTokenSecret != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"accessToken" : accessToken, @"accessTokenSecret" : accessTokenSecret}};

		[self objectWithModule:@"twitter" method:@"signIn" attributes:attributes];
	}
}

@end