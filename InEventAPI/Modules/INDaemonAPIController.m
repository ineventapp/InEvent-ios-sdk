#import "INDaemonAPIController.h"

@implementation INDaemonAPIController

#pragma mark - Daemon

- (void)findAuthenticatedAtEventWithOperation:(NSString *)operation withTarget:(NSString *)target {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && operation != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"operation" : operation, @"target" : target}};

		[self objectWithModule:@"daemon" method:@"find" attributes:attributes];
	}
}

- (void)bulkAuthenticatedAtEventAtCompany:(NSInteger)companyID withTarget:(NSString *)target atTarget:(NSInteger)targetID atResource:(NSInteger)resourceID withResourceType:(NSString *)resourceType withResources:(NSString *)resources withExtra:(NSString *)extra {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil && resourceType != nil && resources != nil && extra != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"eventID" : eventID, @"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID], @"resourceID" : [NSString stringWithFormat:@"%ld", (long)resourceID], @"resourceType" : resourceType}, @"POST" : @{@"resources" : resources, @"extra" : extra}};

		[self objectWithModule:@"daemon" method:@"bulk" attributes:attributes];
	}
}

@end
