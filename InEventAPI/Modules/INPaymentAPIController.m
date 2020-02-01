#import "INPaymentAPIController.h"

@implementation INPaymentAPIController

#pragma mark - Payment

- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withTickets:(NSString *)tickets withName:(NSString *)name withEmail:(NSString *)email withAmount:(NSString *)amount withPassword:(NSString *)password {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && username != nil && tickets != nil && name != nil && email != nil && amount != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"username" : username, @"tickets" : tickets, @"name" : name, @"email" : email, @"amount" : amount, @"password" : password}};

		[self objectWithModule:@"payment" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithQuery:(NSString *)query {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && query != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"query" : query}};

		[self objectWithModule:@"payment" method:@"find" attributes:attributes];
	}
}

@end
