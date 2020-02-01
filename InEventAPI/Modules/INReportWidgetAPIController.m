#import "INReportWidgetAPIController.h"

@implementation INReportWidgetAPIController

#pragma mark - ReportWidget

- (void)findAuthenticatedWithCache:(NSString *)cache withOrder:(NSString *)order withTerm:(NSString *)term withFilter:(NSString *)filter withWidgets:(NSString *)widgets {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && cache != nil && order != nil && term != nil && filter != nil && widgets != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"cache" : cache, @"order" : order, @"term" : term, @"filter" : filter}, @"POST" : @{@"widgets" : widgets}};

		[self objectWithModule:@"report.widget" method:@"find" attributes:attributes];
	}
}

- (void)createAuthenticatedAtReport:(NSInteger)reportID withPosition:(NSString *)position withWidget:(NSString *)widget withName:(NSString *)name withSource:(NSString *)source {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && position != nil && widget != nil && name != nil && source != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportID" : [NSString stringWithFormat:@"%ld", (long)reportID]}, @"POST" : @{@"position" : position, @"widget" : widget, @"name" : name, @"source" : source}};

		[self objectWithModule:@"report.widget" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtReportWidget:(NSInteger)reportWidgetID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportWidgetID" : [NSString stringWithFormat:@"%ld", (long)reportWidgetID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"report.widget" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtReportWidget:(NSInteger)reportWidgetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"reportWidgetID" : [NSString stringWithFormat:@"%ld", (long)reportWidgetID]}};

		[self objectWithModule:@"report.widget" method:@"remove" attributes:attributes];
	}
}

@end
