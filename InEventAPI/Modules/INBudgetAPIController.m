#import "INBudgetAPIController.h"

@implementation INBudgetAPIController

#pragma mark - Budget

- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description withType:(NSString *)type withCategory:(NSString *)category withSupplier:(NSString *)supplier withStatus:(NSString *)status withPrice:(NSString *)price withDate:(NSString *)date withMode:(NSString *)mode {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && title != nil && description != nil && type != nil && category != nil && supplier != nil && status != nil && price != nil && date != nil && mode != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"title" : title, @"description" : description, @"type" : type, @"category" : category, @"supplier" : supplier, @"status" : status, @"price" : price, @"date" : date, @"mode" : mode}};

		[self objectWithModule:@"budget" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtBudget:(NSInteger)budgetID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"budgetID" : [NSString stringWithFormat:@"%ld", (long)budgetID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"budget" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtBudget:(NSInteger)budgetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"budgetID" : [NSString stringWithFormat:@"%ld", (long)budgetID]}};

		[self objectWithModule:@"budget" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtBudget:(NSInteger)budgetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"budgetID" : [NSString stringWithFormat:@"%ld", (long)budgetID]}};

		[self objectWithModule:@"budget" method:@"get" attributes:attributes];
	}
}

- (void)getCategoriesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"budget" method:@"getCategories" attributes:attributes];
	}
}

- (void)getSuppliersAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"budget" method:@"getSuppliers" attributes:attributes];
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

@end
