#import "INEventBadgeAPIController.h"

@implementation INEventBadgeAPIController

#pragma mark - EventBadge

- (void)bindAuthenticatedAtEventAtList:(NSInteger)listID withName:(NSString *)name withPrinterType:(NSString *)printerType withPrinterModel:(NSString *)printerModel withLabelType:(NSString *)labelType withWidth:(NSString *)width withHeight:(NSString *)height {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && printerType != nil && printerModel != nil && labelType != nil && width != nil && height != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"name" : name, @"printerType" : printerType, @"printerModel" : printerModel, @"labelType" : labelType, @"width" : width, @"height" : height}};

		[self objectWithModule:@"event.badge" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtEventBadge:(NSInteger)eventBadgeID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBadgeID" : [NSString stringWithFormat:@"%ld", (long)eventBadgeID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.badge" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventBadge:(NSInteger)eventBadgeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBadgeID" : [NSString stringWithFormat:@"%ld", (long)eventBadgeID]}};

		[self objectWithModule:@"event.badge" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"event.badge" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventBadge:(NSInteger)eventBadgeID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBadgeID" : [NSString stringWithFormat:@"%ld", (long)eventBadgeID]}};

		[self objectWithModule:@"event.badge" method:@"get" attributes:attributes];
	}
}

@end
