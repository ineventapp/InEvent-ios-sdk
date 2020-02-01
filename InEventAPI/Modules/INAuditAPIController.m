#import "INAuditAPIController.h"

@implementation INAuditAPIController

#pragma mark - Audit

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withQueryContent:(NSString *)queryContent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && query != nil && queryKey != nil && queryContent != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"query" : query, @"queryKey" : queryKey}, @"POST" : @{@"queryContent" : queryContent}};

		[self objectWithModule:@"audit" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithQuery:(NSString *)query withQueryKey:(NSString *)queryKey withQueryContent:(NSString *)queryContent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil && queryKey != nil && queryContent != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query, @"queryKey" : queryKey}, @"POST" : @{@"queryContent" : queryContent}};

		[self objectWithModule:@"audit" method:@"find" attributes:attributes];
	}
}

@end
