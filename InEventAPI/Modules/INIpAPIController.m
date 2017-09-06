#import "INIpAPIController.h"

@implementation INIpAPIController

#pragma mark - Ip

- (void)get {



	NSDictionary *attributes = @{@"GET" : @{}};

	[self objectWithModule:@"ip" method:@"get" attributes:attributes];
}

@end