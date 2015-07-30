#import "INFileAPIController.h"

@implementation INFileAPIController

#pragma mark - File

- (void)createAuthenticatedWithName:(NSString *)name withX:(NSString *)x withY:(NSString *)y withWidth:(NSString *)width withHeight:(NSString *)height {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && x != nil && y != nil && width != nil && height != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name, @"x" : x, @"y" : y, @"width" : width, @"height" : height}};

		[self JSONObjectWithModule:@"file" method:@"create" attributes:attributes];
	}
}

@end