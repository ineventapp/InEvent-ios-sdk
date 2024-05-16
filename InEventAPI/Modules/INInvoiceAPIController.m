#import "INInvoiceAPIController.h"

@implementation INInvoiceAPIController

#pragma mark - Invoice

- (void)createAuthenticatedAtEventWithUsername:(NSString *)username withName:(NSString *)name withEmail:(NSString *)email withCompanyName:(NSString *)companyName withTaxDocument:(NSString *)taxDocument withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withTickets:(NSString *)tickets withInvoice:(NSString *)invoice {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && username != nil && name != nil && email != nil && companyName != nil && taxDocument != nil && addressLine1 != nil && addressLine2 != nil && tickets != nil && invoice != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"username" : username, @"name" : name, @"email" : email, @"companyName" : companyName, @"taxDocument" : taxDocument, @"addressLine1" : addressLine1, @"addressLine2" : addressLine2, @"tickets" : tickets, @"invoice" : invoice}};

		[self objectWithModule:@"invoice" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"invoice" method:@"find" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtInvoice:(NSInteger)invoiceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"invoiceID" : [NSString stringWithFormat:@"%ld", (long)invoiceID]}};

		[self objectWithModule:@"invoice" method:@"remove" attributes:attributes];
	}
}

- (void)getAuthenticatedAtInvoice:(NSInteger)invoiceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"invoiceID" : [NSString stringWithFormat:@"%ld", (long)invoiceID]}};

		[self objectWithModule:@"invoice" method:@"get" attributes:attributes];
	}
}

- (void)getAtEncryptedInvoice:(NSInteger)encryptedInvoiceID {



	NSDictionary *attributes = @{@"GET" : @{@"encryptedInvoiceID" : [NSString stringWithFormat:@"%ld", (long)encryptedInvoiceID]}};

	[self objectWithModule:@"invoice" method:@"get" attributes:attributes];
}

- (void)sendPreviewAuthenticatedAtEventForPerson:(NSInteger)personID withCompanyName:(NSString *)companyName withCompanyTaxId:(NSString *)companyTaxId withAddressLine1:(NSString *)addressLine1 withAddressLine2:(NSString *)addressLine2 withTickets:(NSString *)tickets {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && companyName != nil && companyTaxId != nil && addressLine1 != nil && addressLine2 != nil && tickets != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"personID" : [NSString stringWithFormat:@"%ld", (long)personID], @"companyName" : companyName, @"companyTaxId" : companyTaxId, @"addressLine1" : addressLine1, @"addressLine2" : addressLine2, @"tickets" : tickets}};

		[self objectWithModule:@"invoice" method:@"sendPreview" attributes:attributes];
	}
}

- (void)resendInvoiceAuthenticatedAtEventAtInvoice:(NSInteger)invoiceID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"invoiceID" : [NSString stringWithFormat:@"%ld", (long)invoiceID]}};

		[self objectWithModule:@"invoice" method:@"resendInvoice" attributes:attributes];
	}
}

@end
