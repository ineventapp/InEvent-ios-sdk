#import "INCaseAPIController.h"

@implementation INCaseAPIController

#pragma mark - Case

- (void)find {



	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"case" method:@"find" attributes:attributes];
}

- (void)getAtEvent {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID}};

		[self JSONObjectWithModule:@"case" method:@"get" attributes:attributes];
	}
}

@end