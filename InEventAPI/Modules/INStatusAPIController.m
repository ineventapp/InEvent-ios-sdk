#import "INStatusAPIController.h"

@implementation INStatusAPIController

#pragma mark - Status

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withObject:(NSString *)object withLabel:(NSString *)label atStatusType:(NSInteger)statusTypeID withProgressive:(NSString *)progressive {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && object != nil && label != nil && progressive != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"object" : object, @"label" : label, @"statusTypeID" : [NSString stringWithFormat:@"%ld", (long)statusTypeID], @"progressive" : progressive}};

		[self objectWithModule:@"status" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithObject:(NSString *)object withLabel:(NSString *)label withProgressive:(NSString *)progressive {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && object != nil && label != nil && progressive != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"object" : object, @"label" : label, @"progressive" : progressive}};

		[self objectWithModule:@"status" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtStatus:(NSInteger)statusID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"statusID" : [NSString stringWithFormat:@"%ld", (long)statusID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"status" method:@"edit" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"status" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtStatus:(NSInteger)statusID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"statusID" : [NSString stringWithFormat:@"%ld", (long)statusID]}};

		[self objectWithModule:@"status" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID atStatusType:(NSInteger)statusTypeID withObject:(NSString *)object {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && object != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"statusTypeID" : [NSString stringWithFormat:@"%ld", (long)statusTypeID], @"object" : object}};

		[self objectWithModule:@"status" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithObject:(NSString *)object {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && object != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"object" : object}};

		[self objectWithModule:@"status" method:@"find" attributes:attributes];
	}
}

@end
