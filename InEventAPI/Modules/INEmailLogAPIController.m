#import "INEmailLogAPIController.h"

@implementation INEmailLogAPIController

#pragma mark - EmailLog

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSubject:(NSString *)subject {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && query != nil && subject != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"query" : query, @"subject" : subject}};

		[self objectWithModule:@"email.log" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEmailLog:(NSInteger)emailLogID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"emailLogID" : [NSString stringWithFormat:@"%ld", (long)emailLogID]}};

		[self objectWithModule:@"email.log" method:@"get" attributes:attributes];
	}
}

@end
