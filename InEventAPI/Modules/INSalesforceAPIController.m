#import "INSalesforceAPIController.h"

@implementation INSalesforceAPIController

#pragma mark - Salesforce

- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"get" attributes:attributes];
	}
}

- (void)getCampaignsAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"getCampaigns" attributes:attributes];
	}
}

- (void)describeCustomObjectAuthenticatedAtEventAtCompany:(NSInteger)companyID withSfObject:(NSString *)sfObject withRefresh:(NSString *)refresh withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && sfObject != nil && refresh != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"sfObject" : sfObject, @"refresh" : refresh, @"name" : name}};

		[self objectWithModule:@"salesforce" method:@"describeCustomObject" attributes:attributes];
	}
}

- (void)getCustomObjectsAuthenticatedAtEventAtCompany:(NSInteger)companyID withRefresh:(NSString *)refresh withName:(NSString *)name {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && refresh != nil && name != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"refresh" : refresh, @"name" : name}};

		[self objectWithModule:@"salesforce" method:@"getCustomObjects" attributes:attributes];
	}
}

- (void)getLeadListsAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"getLeadLists" attributes:attributes];
	}
}

- (void)getContactListsAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"getContactLists" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && name != nil && idResource != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"type" : type, @"name" : name, @"idResource" : idResource}};

		[self objectWithModule:@"salesforce" method:@"getPeople" attributes:attributes];
	}
}

- (void)getFieldsAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"getFields" attributes:attributes];
	}
}

- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withPeople:(NSString *)people {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && local != nil && people != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"local" : local, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}, @"POST" : @{@"people" : people}};

		[self objectWithModule:@"salesforce" method:@"importPeople" attributes:attributes];
	}
}

- (void)importPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID withLocal:(NSString *)local atList:(NSInteger)listID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && local != nil && type != nil && name != nil && idResource != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"local" : local, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"type" : type, @"name" : name, @"idResource" : idResource}};

		[self objectWithModule:@"salesforce" method:@"importPeople" attributes:attributes];
	}
}

- (void)exportPeopleAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withType:(NSString *)type withLocal:(NSString *)local {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && type != nil && local != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"type" : type, @"local" : local}};

		[self objectWithModule:@"salesforce" method:@"exportPeople" attributes:attributes];
	}
}

- (void)unlinkAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"salesforce" method:@"unlink" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"salesforce" method:@"edit" attributes:attributes];
	}
}

@end
