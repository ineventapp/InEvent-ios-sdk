#import "INBudgetAPIController.h"

@implementation INBudgetAPIController

#pragma mark - Budget

- (void)createAuthenticatedAtEventWithDescription:(NSString *)description withType:(NSString *)type withPrice:(NSString *)price withDate:(NSString *)date {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && description != nil && type != nil && price != nil && date != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"description" : description, @"type" : type, @"price" : price, @"date" : date}};

		[self objectWithModule:@"budget" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"budget" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtBudget:(NSInteger)budgetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"budgetID" : [NSString stringWithFormat:@"%ld", (long)budgetID]}};

		[self objectWithModule:@"budget" method:@"remove" attributes:attributes];
	}
}

@end