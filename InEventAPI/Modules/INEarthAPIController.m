#import "INEarthAPIController.h"

@implementation INEarthAPIController

#pragma mark - Earth

- (void)findWithSearchQuery:(NSString *)searchQuery {


	if (searchQuery != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"searchQuery" : searchQuery}};

		[self JSONObjectWithModule:@"earth" method:@"find" attributes:attributes];
	}
}

- (void)getAtCity:(NSInteger)cityID {



	NSDictionary *attributes = @{@"GET" : @{@"cityID" : [NSString stringWithFormat:@"%ld", (long)cityID]}};

	[self JSONObjectWithModule:@"earth" method:@"get" attributes:attributes];
}

@end