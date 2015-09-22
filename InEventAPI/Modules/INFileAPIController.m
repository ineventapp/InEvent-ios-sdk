#import "INFileAPIController.h"

@implementation INFileAPIController

#pragma mark - File

- (void)createAuthenticatedWithName:(NSString *)name withFile:(NSString *)file {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name}, @"POST" : @{@"file" : file}};

		[self JSONObjectWithModule:@"file" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedWithName:(NSString *)name withX:(NSString *)x withY:(NSString *)y withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && x != nil && y != nil && width != nil && height != nil && file != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name, @"x" : x, @"y" : y, @"width" : width, @"height" : height}, @"POST" : @{@"file" : file}};

		[self JSONObjectWithModule:@"file" method:@"create" attributes:attributes];
	}
}

@end