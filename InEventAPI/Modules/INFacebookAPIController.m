#import "INFacebookAPIController.h"

@implementation INFacebookAPIController

#pragma mark - Facebook

- (void)signInWithFacebookToken:(NSString *)facebookToken {


	if (facebookToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"facebookToken" : facebookToken}};

		[self objectWithModule:@"facebook" method:@"signIn" attributes:attributes];
	}
}

@end
