#import "INEventBlacklistAPIController.h"

@implementation INEventBlacklistAPIController

#pragma mark - EventBlacklist

- (void)removeAuthenticatedAtEventBlacklist:(NSInteger)eventBlacklistID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventBlacklistID" : [NSString stringWithFormat:@"%ld", (long)eventBlacklistID]}};

		[self objectWithModule:@"event.blacklist" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"event.blacklist" method:@"find" attributes:attributes];
	}
}

@end
