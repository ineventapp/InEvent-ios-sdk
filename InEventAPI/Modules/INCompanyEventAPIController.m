#import "INCompanyEventAPIController.h"

@implementation INCompanyEventAPIController

#pragma mark - CompanyEvent

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"nickname" : nickname}};

		[self objectWithModule:@"company.event" method:@"bind" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withPath:(NSString *)path {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && path != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"path" : path}};

		[self objectWithModule:@"company.event" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPresential:(NSString *)presential withPublic:(NSString *)public withVisible:(NSString *)visible withArchived:(NSString *)archived atTemplate:(NSInteger)templateID atPlace:(NSInteger)placeID withOrder:(NSString *)order withTimezone:(NSString *)timezone withTags:(NSString *)tags withEvents:(NSString *)events withStripTagsDescription:(NSString *)stripTagsDescription withCurrent:(NSString *)current {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && name != nil && city != nil && dateBegin != nil && dateEnd != nil && presential != nil && public != nil && visible != nil && archived != nil && order != nil && timezone != nil && tags != nil && events != nil && stripTagsDescription != nil && current != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"name" : name, @"city" : city, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"presential" : presential, @"public" : public, @"visible" : visible, @"archived" : archived, @"templateID" : [NSString stringWithFormat:@"%ld", (long)templateID], @"placeID" : [NSString stringWithFormat:@"%ld", (long)placeID], @"order" : order, @"timezone" : timezone, @"tags" : tags, @"events" : events, @"stripTagsDescription" : stripTagsDescription, @"current" : current}};

		[self objectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withTags:(NSString *)tags {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && selection != nil && name != nil && dateBegin != nil && dateEnd != nil && tags != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"selection" : selection, @"name" : name, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"tags" : tags}};

		[self objectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPresential:(NSString *)presential withPublic:(NSString *)public withVisible:(NSString *)visible withOrder:(NSString *)order withTags:(NSString *)tags {


	if (name != nil && city != nil && dateBegin != nil && dateEnd != nil && presential != nil && public != nil && visible != nil && order != nil && tags != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"name" : name, @"city" : city, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"presential" : presential, @"public" : public, @"visible" : visible, @"order" : order, @"tags" : tags}};

		[self objectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withTags:(NSString *)tags {


	if (name != nil && dateBegin != nil && dateEnd != nil && tags != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"name" : name, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"tags" : tags}};

		[self objectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"get" attributes:attributes];
	}
}

- (void)getAtEventAtCompany:(NSInteger)companyID {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"get" attributes:attributes];
	}
}

- (void)findAttendeesAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company.event" method:@"findAttendees" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtEventAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"copy" attributes:attributes];
	}
}

- (void)budgetAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"company.event" method:@"budget" attributes:attributes];
	}
}

- (void)assignOwnerAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"company.event" method:@"assignOwner" attributes:attributes];
	}
}

- (void)pinAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"pin" attributes:attributes];
	}
}

- (void)unpinAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"company.event" method:@"unpin" attributes:attributes];
	}
}

@end
