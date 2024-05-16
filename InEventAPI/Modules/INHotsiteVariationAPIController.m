#import "INHotsiteVariationAPIController.h"

@implementation INHotsiteVariationAPIController

#pragma mark - HotsiteVariation

- (void)bindAuthenticatedAtEventWithPage:(NSString *)page withVariation:(NSString *)variation withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && variation != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"variation" : variation}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"hotsite.variation" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventWithPage:(NSString *)page withVariation:(NSString *)variation {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil && variation != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page, @"variation" : variation}};

		[self objectWithModule:@"hotsite.variation" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithPage:(NSString *)page {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && page != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"page" : page}};

		[self objectWithModule:@"hotsite.variation" method:@"find" attributes:attributes];
	}
}

@end
