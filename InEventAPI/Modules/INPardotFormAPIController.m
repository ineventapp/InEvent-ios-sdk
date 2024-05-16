#import "INPardotFormAPIController.h"

@implementation INPardotFormAPIController

#pragma mark - PardotForm

- (void)bindAuthenticatedAtEventWithPardotFormId:(NSString *)pardotFormId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && pardotFormId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"pardotFormId" : pardotFormId}};

		[self objectWithModule:@"pardot.form" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtPardotForm:(NSInteger)pardotFormID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"pardotFormID" : [NSString stringWithFormat:@"%ld", (long)pardotFormID]}};

		[self objectWithModule:@"pardot.form" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"pardot.form" method:@"find" attributes:attributes];
	}
}

- (void)listProspectsAuthenticatedAtPardotForm:(NSInteger)pardotFormID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"pardotFormID" : [NSString stringWithFormat:@"%ld", (long)pardotFormID]}};

		[self objectWithModule:@"pardot.form" method:@"listProspects" attributes:attributes];
	}
}

@end
