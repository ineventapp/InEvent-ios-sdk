#import "INLinkedinAPIController.h"

@implementation INLinkedinAPIController

#pragma mark - Linkedin

- (void)signInWithLinkedInToken:(NSString *)linkedInToken {


	if (linkedInToken != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"linkedInToken" : linkedInToken}};

		[self objectWithModule:@"linkedin" method:@"signIn" attributes:attributes];
	}
}

@end
