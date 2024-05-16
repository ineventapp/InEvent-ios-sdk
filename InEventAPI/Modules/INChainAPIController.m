#import "INChainAPIController.h"

@implementation INChainAPIController

#pragma mark - Chain

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withDescription:(NSString *)description withConstraint:(NSString *)constraint withSource:(NSString *)source atSource:(NSInteger)sourceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && description != nil && constraint != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"description" : description, @"constraint" : constraint, @"source" : source, @"sourceID" : [NSString stringWithFormat:@"%ld", (long)sourceID]}};

		[self objectWithModule:@"chain" method:@"create" attributes:attributes];
	}
}

- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withConstraint:(NSString *)constraint withSource:(NSString *)source atSource:(NSInteger)sourceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && description != nil && constraint != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"name" : name, @"description" : description, @"constraint" : constraint, @"source" : source, @"sourceID" : [NSString stringWithFormat:@"%ld", (long)sourceID]}};

		[self objectWithModule:@"chain" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventWithSource:(NSString *)source withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"chain" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtChain:(NSInteger)chainID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"chainID" : [NSString stringWithFormat:@"%ld", (long)chainID]}};

		[self objectWithModule:@"chain" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"source" : source}};

		[self objectWithModule:@"chain" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"source" : source}};

		[self objectWithModule:@"chain" method:@"find" attributes:attributes];
	}
}

@end
