#import "INPaymentAPIController.h"

@implementation INPaymentAPIController

#pragma mark - Payment

- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withTickets:(NSString *)tickets withName:(NSString *)name withEmail:(NSString *)email withInvoice:(NSString *)invoice withCompanyName:(NSString *)companyName withTaxDocument:(NSString *)taxDocument withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withPassword:(NSString *)password {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && username != nil && tickets != nil && name != nil && email != nil && invoice != nil && companyName != nil && taxDocument != nil && addressLine1 != nil && addressLine2 != nil && password != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"username" : username, @"tickets" : tickets, @"name" : name, @"email" : email, @"invoice" : invoice, @"companyName" : companyName, @"taxDocument" : taxDocument, @"addressLine1" : addressLine1, @"addressLine2" : addressLine2, @"password" : password}};

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

- (void)approveAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"approve" attributes:attributes];
	}
}

- (void)rejectAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"reject" attributes:attributes];
	}
}

- (void)requestRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"requestRefund" attributes:attributes];
	}
}

- (void)cancelRefundRequestAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"cancelRefundRequest" attributes:attributes];
	}
}

- (void)approveRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"approveRefund" attributes:attributes];
	}
}

- (void)rejectRefundAuthenticatedAtEventAtPayment:(NSInteger)paymentID withMessage:(NSString *)message {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && message != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}, @"POST" : @{@"message" : message}};

		[self objectWithModule:@"payment" method:@"rejectRefund" attributes:attributes];
	}
}

- (void)resendReceiptAuthenticatedAtEventAtPayment:(NSInteger)paymentID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"paymentID" : [NSString stringWithFormat:@"%ld", (long)paymentID]}};

		[self objectWithModule:@"payment" method:@"resendReceipt" attributes:attributes];
	}
}

- (void)statsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"payment" method:@"stats" attributes:attributes];
	}
}

- (void)downloadInvoicesAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"payment" method:@"downloadInvoices" attributes:attributes];
	}
}

@end
