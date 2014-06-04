#import "INAdAPIController.h"

@implementation INAdAPIController

#pragma mark - Ad

- (void)createAuthenticatedAtEventForExhibitor:(NSInteger)exhibitorID withImage:(NSString *)image withWeight:(NSString *)weight {

	if (image != nil && weight != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}, @"POST" : @{@"image" : image, @"weight" : weight}};

		[self JSONObjectWithModule:@"ad" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithImage:(NSString *)image withWeight:(NSString *)weight {

	if (image != nil && weight != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"image" : image, @"weight" : weight}};

		[self JSONObjectWithModule:@"ad" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtAd:(NSInteger)adID {

	NSDictionary *attributes = @{@"GET" : @{@"adID" : [NSString stringWithFormat:@"%d", adID]}};

	[self JSONObjectWithModule:@"ad" method:@"remove" attributes:attributes];
}

- (void)findAtEventForExhibitor:(NSInteger)exhibitorID {

	NSDictionary *attributes = @{@"GET" : @{@"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}};

	[self JSONObjectWithModule:@"ad" method:@"find" attributes:attributes];
}

- (void)findAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"ad" method:@"find" attributes:attributes];
}

- (void)seenAdAtAd:(NSInteger)adID {

	NSDictionary *attributes = @{@"GET" : @{@"adID" : [NSString stringWithFormat:@"%d", adID]}};

	[self JSONObjectWithModule:@"ad" method:@"seenAd" attributes:attributes];
}

@end