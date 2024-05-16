#import "INEventSanityAPIController.h"

@implementation INEventSanityAPIController

#pragma mark - EventSanity

- (void)operateAuthenticatedAtEventSanity:(NSInteger)eventSanityID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventSanityID" : [NSString stringWithFormat:@"%ld", (long)eventSanityID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"event.sanity" method:@"operate" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && query != nil && sort != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"query" : query, @"sort" : sort, @"order" : order}};

		[self objectWithModule:@"event.sanity" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil && sort != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query, @"sort" : sort, @"order" : order}};

		[self objectWithModule:@"event.sanity" method:@"find" attributes:attributes];
	}
}

@end
