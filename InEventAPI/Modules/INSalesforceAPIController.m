#import "INSalesforceAPIController.h"

@implementation INSalesforceAPIController

#pragma mark - Salesforce

- (void)getAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"salesforce" method:@"get" attributes:attributes];
	}
}

- (void)getCampaignsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"salesforce" method:@"getCampaigns" attributes:attributes];
	}
}

- (void)getLeadListsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"salesforce" method:@"getLeadLists" attributes:attributes];
	}
}

- (void)getContactListsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"salesforce" method:@"getContactLists" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatedAtCompany:(NSInteger)companyID withType:(NSString *)type withName:(NSString *)name withIdResource:(NSString *)idResource {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && type != nil && name != nil && idResource != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"type" : type, @"name" : name, @"idResource" : idResource}};

		[self objectWithModule:@"salesforce" method:@"getPeople" attributes:attributes];
	}
}

- (void)getFieldsAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

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

- (void)unlinkAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"salesforce" method:@"unlink" attributes:attributes];
	}
}

- (void)editAuthenticatedAtCompany:(NSInteger)companyID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"salesforce" method:@"edit" attributes:attributes];
	}
}

@end
