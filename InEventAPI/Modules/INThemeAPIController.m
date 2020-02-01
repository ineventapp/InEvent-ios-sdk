#import "INThemeAPIController.h"

@implementation INThemeAPIController

#pragma mark - Theme

- (void)find {



	NSDictionary *attributes = @{@"GET" : @{}};

	[self objectWithModule:@"theme" method:@"find" attributes:attributes];
}

- (void)findWithName:(NSString *)name {


	if (name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"name" : name}};

		[self objectWithModule:@"theme" method:@"find" attributes:attributes];
	}
}

- (void)getAtTheme:(NSInteger)themeID {



	NSDictionary *attributes = @{@"GET" : @{@"themeID" : [NSString stringWithFormat:@"%ld", (long)themeID]}};

	[self objectWithModule:@"theme" method:@"get" attributes:attributes];
}

@end
