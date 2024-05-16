#import "INEventScannerAPIController.h"

@implementation INEventScannerAPIController

#pragma mark - EventScanner

- (void)createAuthenticatedAtEventAtEventScanner:(NSInteger)eventScannerID withName:(NSString *)name withEmail:(NSString *)email withRole:(NSString *)role withCompany:(NSString *)company withTelephone:(NSString *)telephone withWebsite:(NSString *)website {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && email != nil && role != nil && company != nil && telephone != nil && website != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"eventScannerID" : [NSString stringWithFormat:@"%ld", (long)eventScannerID]}, @"POST" : @{@"name" : name, @"email" : email, @"role" : role, @"company" : company, @"telephone" : telephone, @"website" : website}};

		[self objectWithModule:@"event.scanner" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtEventScanner:(NSInteger)eventScannerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"eventScannerID" : [NSString stringWithFormat:@"%ld", (long)eventScannerID]}};

		[self objectWithModule:@"event.scanner" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"event.scanner" method:@"find" attributes:attributes];
	}
}

@end
