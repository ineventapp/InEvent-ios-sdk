#import "INSchemaAPIController.h"

@implementation INSchemaAPIController

#pragma mark - Schema

- (void)getWithModule:(NSString *)module {


	if (module != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"module" : module}};

		[self objectWithModule:@"schema" method:@"get" attributes:attributes];
	}
}

@end
