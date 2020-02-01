#import "INTemplateEventAPIController.h"

@implementation INTemplateEventAPIController

#pragma mark - TemplateEvent

- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && color != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"name" : name, @"color" : color}};

		[self objectWithModule:@"template.event" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtTemplateEvent:(NSInteger)templateEventID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"templateEventID" : [NSString stringWithFormat:@"%ld", (long)templateEventID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"template.event" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtTemplateEvent:(NSInteger)templateEventID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"templateEventID" : [NSString stringWithFormat:@"%ld", (long)templateEventID]}};

		[self objectWithModule:@"template.event" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withGlobal:(NSString *)global {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && global != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"global" : global}};

		[self objectWithModule:@"template.event" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTemplateEvent:(NSInteger)templateEventID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"templateEventID" : [NSString stringWithFormat:@"%ld", (long)templateEventID]}};

		[self objectWithModule:@"template.event" method:@"get" attributes:attributes];
	}
}

@end
