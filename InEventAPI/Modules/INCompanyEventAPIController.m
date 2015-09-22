#import "INCompanyEventAPIController.h"

@implementation INCompanyEventAPIController

#pragma mark - CompanyEvent

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"nickname" : nickname}};

		[self JSONObjectWithModule:@"company.event" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self JSONObjectWithModule:@"company.event" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {


	if (name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self JSONObjectWithModule:@"company.event" method:@"get" attributes:attributes];
	}
}

- (void)getAtEventAtCompany:(NSInteger)companyID {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self JSONObjectWithModule:@"company.event" method:@"get" attributes:attributes];
	}
}

- (void)approveAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self JSONObjectWithModule:@"company.event" method:@"approve" attributes:attributes];
	}
}

- (void)reviewAuthenticatedAtEventAtCompany:(NSInteger)companyID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"company.event" method:@"review" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self JSONObjectWithModule:@"company.event" method:@"copy" attributes:attributes];
	}
}

@end