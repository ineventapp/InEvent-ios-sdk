#import "INTriggerLogAPIController.h"

@implementation INTriggerLogAPIController

#pragma mark - TriggerLog

- (void)bindAuthenticatedAtTrigger:(NSInteger)triggerID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"triggerID" : [NSString stringWithFormat:@"%ld", (long)triggerID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"trigger.log" method:@"bind" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"trigger.log" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtTrigger:(NSInteger)triggerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"triggerID" : [NSString stringWithFormat:@"%ld", (long)triggerID]}};

		[self objectWithModule:@"trigger.log" method:@"find" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtTriggerLog:(NSInteger)triggerLogID forPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"triggerLogID" : [NSString stringWithFormat:@"%ld", (long)triggerLogID], @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"trigger.log" method:@"dismiss" attributes:attributes];
	}
}

@end