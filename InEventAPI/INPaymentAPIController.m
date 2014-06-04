#import "INPaymentAPIController.h"

@implementation INPaymentAPIController

#pragma mark - Payment

- (void)createAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email {

	if (name != nil && email != nil) {

		NSDictionary *attributes = @{@"GET" : @{}, @"POST" : @{@"name" : name, @"email" : email}};

		[self JSONObjectWithModule:@"payment" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSDictionary *attributes = @{@"GET" : @{}};

	[self JSONObjectWithModule:@"payment" method:@"find" attributes:attributes];
}

- (void)requestAddressAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSDictionary *attributes = @{@"GET" : @{@"paymentID" : [NSString stringWithFormat:@"%d", paymentID]}};

	[self JSONObjectWithModule:@"payment" method:@"requestAddress" attributes:attributes];
}

- (void)provideConfirmationAtEventWithCollection_id:(NSString *)collection_id {

	if (collection_id != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"collection_id" : collection_id}};

		[self JSONObjectWithModule:@"payment" method:@"provideConfirmation" attributes:attributes];
	}
}

@end