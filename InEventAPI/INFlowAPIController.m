#import "INFlowAPIController.h"

@implementation INFlowAPIController

#pragma mark - Flow

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"flow" method:@"find" attributes:attributes];
}

@end