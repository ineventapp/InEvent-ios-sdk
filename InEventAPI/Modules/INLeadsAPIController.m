#import "INLeadsAPIController.h"

@implementation INLeadsAPIController

#pragma mark - Leads

- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withGroupByStatus:(NSString *)groupByStatus withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withSort:(NSString *)sort withSortDirection:(NSString *)sortDirection withFilterStatus:(NSString *)filterStatus withFilterList:(NSString *)filterList withFilterTicket:(NSString *)filterTicket withPaginated:(NSString *)paginated withFilterCount:(NSString *)filterCount {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && selection != nil && groupByStatus != nil && query != nil && queryKey != nil && sort != nil && sortDirection != nil && filterStatus != nil && filterList != nil && filterTicket != nil && paginated != nil && filterCount != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"selection" : selection, @"groupByStatus" : groupByStatus, @"query" : query, @"queryKey" : queryKey, @"sort" : sort, @"sortDirection" : sortDirection, @"filterStatus" : filterStatus, @"filterList" : filterList, @"filterTicket" : filterTicket, @"paginated" : paginated, @"filterCount" : filterCount}};

		[self objectWithModule:@"leads" method:@"find" attributes:attributes];
	}
}

- (void)getFiltersAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"leads" method:@"getFilters" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventForPerson:(NSInteger)personID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"personID" : [NSString stringWithFormat:@"%ld", (long)personID]}};

		[self objectWithModule:@"leads" method:@"remove" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventWithContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"leads" method:@"remove" attributes:attributes];
	}
}

@end
