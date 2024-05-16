#import "INDynamicsAPIController.h"

@implementation INDynamicsAPIController

#pragma mark - Dynamics

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withDomain:(NSString *)domain withAppId:(NSString *)appId withAppSecret:(NSString *)appSecret {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && domain != nil && appId != nil && appSecret != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"domain" : domain, @"appId" : appId, @"appSecret" : appSecret}};

		[self objectWithModule:@"dynamics" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"dynamics" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"dynamics" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"dynamics" method:@"get" attributes:attributes];
	}
}

- (void)findEventsAuthenticatedAtCompany:(NSInteger)companyID withOffset:(NSString *)offset withSearch:(NSString *)search {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && offset != nil && search != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"offset" : offset}, @"POST" : @{@"search" : search}};

		[self objectWithModule:@"dynamics" method:@"findEvents" attributes:attributes];
	}
}

- (void)getEventAuthenticatedAtCompany:(NSInteger)companyID withMsdEventId:(NSString *)msdEventId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && msdEventId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"msdEventId" : msdEventId}};

		[self objectWithModule:@"dynamics" method:@"getEvent" attributes:attributes];
	}
}

- (void)createEventEntityAuthenticatedAtEventAtCompany:(NSInteger)companyID withEntity:(NSString *)entity atFeedback:(NSInteger)feedbackID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && entity != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"entity" : entity, @"feedbackID" : [NSString stringWithFormat:@"%ld", (long)feedbackID]}};

		[self objectWithModule:@"dynamics" method:@"createEventEntity" attributes:attributes];
	}
}

- (void)findEventEntitiesAuthenticatedAtEventAtCompany:(NSInteger)companyID withEntity:(NSString *)entity withOffset:(NSString *)offset withRefresh:(NSString *)refresh {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && entity != nil && offset != nil && refresh != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"entity" : entity, @"offset" : offset, @"refresh" : refresh}};

		[self objectWithModule:@"dynamics" method:@"findEventEntities" attributes:attributes];
	}
}

- (void)findEventEntitiesAuthenticatedAtCompany:(NSInteger)companyID withMsdEventId:(NSString *)msdEventId withEntity:(NSString *)entity withOffset:(NSString *)offset withRefresh:(NSString *)refresh {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && msdEventId != nil && entity != nil && offset != nil && refresh != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"msdEventId" : msdEventId, @"entity" : entity, @"offset" : offset, @"refresh" : refresh}};

		[self objectWithModule:@"dynamics" method:@"findEventEntities" attributes:attributes];
	}
}

- (void)findActivityEntitiesAuthenticatedAtCompany:(NSInteger)companyID withMsdActivityId:(NSString *)msdActivityId withEntity:(NSString *)entity withOffset:(NSString *)offset {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && msdActivityId != nil && entity != nil && offset != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"msdActivityId" : msdActivityId, @"entity" : entity, @"offset" : offset}};

		[self objectWithModule:@"dynamics" method:@"findActivityEntities" attributes:attributes];
	}
}

@end
