#import "INCompanyEventAPIController.h"

@implementation INCompanyEventAPIController

#pragma mark - CompanyEvent

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withNickname:(NSString *)nickname {

	if (name != nil && nickname != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"name" : name, @"nickname" : nickname}};

		[self JSONObjectWithModule:@"company.event" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtEventAtCompany:(NSInteger)companyID  {

	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], }};

	[self JSONObjectWithModule:@"company.event" method:@"dismiss" attributes:attributes];
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {

	if (selection != nil && name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"selection" : selection, @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)findAtCompany:(NSInteger)companyID withName:(NSString *)name withCity:(NSString *)city withTheme:(NSString *)theme withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withOrder:(NSString *)order {

	if (name != nil && city != nil && theme != nil && dateBegin != nil && dateEnd != nil && order != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], @"name" : name, @"city" : city, @"theme" : theme, @"dateBegin" : dateBegin, @"dateEnd" : dateEnd, @"order" : order}};

		[self JSONObjectWithModule:@"company.event" method:@"find" attributes:attributes];
	}
}

- (void)approveAuthenticatedAtEventAtCompany:(NSInteger)companyID  {

	NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], }};

	[self JSONObjectWithModule:@"company.event" method:@"approve" attributes:attributes];
}

- (void)reviewAuthenticatedAtEventAtCompany:(NSInteger)companyID withMessage:(NSString *)message {

	if (message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID], }, @"POST" : @{@"message" : message}};

		[self JSONObjectWithModule:@"company.event" method:@"review" attributes:attributes];
	}
}

@end