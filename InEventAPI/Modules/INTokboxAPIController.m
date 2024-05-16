#import "INTokboxAPIController.h"

@implementation INTokboxAPIController

#pragma mark - Tokbox

- (void)createDirectUploadAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID]}};

		[self objectWithModule:@"tokbox" method:@"createDirectUpload" attributes:attributes];
	}
}

@end
