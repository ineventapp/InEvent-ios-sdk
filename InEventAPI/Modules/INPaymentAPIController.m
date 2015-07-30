#import "INPaymentAPIController.h"

@implementation INPaymentAPIController

#pragma mark - Payment

- (void)createAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"name" : name, @"email" : email}};

		[self JSONObjectWithModule:@"payment" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self JSONObjectWithModule:@"payment" method:@"find" attributes:attributes];
	}
}

- (void)requestAddressAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self JSONObjectWithModule:@"payment" method:@"requestAddress" attributes:attributes];
	}
}

- (void)provideConfirmationAtEventWithCollection_id:(NSString *)collection_id {

	NSString *eventID = [[[INEventToken sharedInstance] objectForKey:@"eventID"] stringValue];

	if (eventID != nil && collection_id != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"collection_id" : collection_id}};

		[self JSONObjectWithModule:@"payment" method:@"provideConfirmation" attributes:attributes];
	}
}

@end