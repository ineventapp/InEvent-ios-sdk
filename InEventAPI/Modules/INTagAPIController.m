#import "INTagAPIController.h"

@implementation INTagAPIController

#pragma mark - Tag

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color withCategory:(NSString *)category withCategoryType:(NSString *)categoryType {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && color != nil && category != nil && categoryType != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"color" : color, @"category" : category, @"categoryType" : categoryType}};

		[self objectWithModule:@"tag" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && color != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"color" : color}};

		[self objectWithModule:@"tag" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtTag:(NSInteger)tagID withKey:(NSString *)key withValue:(NSString *)value withCategoryType:(NSString *)categoryType {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil && categoryType != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID], @"key" : key}, @"POST" : @{@"value" : value, @"categoryType" : categoryType}};

		[self objectWithModule:@"tag" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"tag" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection}};

		[self objectWithModule:@"tag" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection}};

		[self objectWithModule:@"tag" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"tag" method:@"get" attributes:attributes];
	}
}

- (void)getCategoriesAuthenticatedAtEventWithCategoryType:(NSString *)categoryType {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && categoryType != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"categoryType" : categoryType}};

		[self objectWithModule:@"tag" method:@"getCategories" attributes:attributes];
	}
}

@end
