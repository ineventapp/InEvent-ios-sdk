#import "INDaemonAPIController.h"

@implementation INDaemonAPIController

#pragma mark - Daemon

- (void)findAtEventWithOperation:(NSString *)operation withTarget:(NSString *)target {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && operation != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"operation" : operation, @"target" : target}};

		[self JSONObjectWithModule:@"daemon" method:@"find" attributes:attributes];
	}
}

@end