//
//  InEventMaterialAPIController.m
//  InEvent
//
//  Created by Pedro Góes on 21/11/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "InEventPaymentAPIController.h"

@implementation InEventPaymentAPIController

#pragma mark - Payment

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withTickets:(NSString *)tickets withAdvertisements:(NSString *)advertisements {
    
	if (tokenID != nil && tickets != nil && advertisements != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"tickets" : tickets, @"advertisements" : advertisements}};
        
		[self JSONObjectWithNamespace:@"payment" method:@"create" attributes:attributes];
	}
}

- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"payment" method:@"getAll" attributes:attributes];
	}
}

- (void)requestAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID atPayment:(NSInteger)paymentID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"paymentID" : [NSString stringWithFormat:@"%d", paymentID]}};
        
		[self JSONObjectWithNamespace:@"payment" method:@"requestAddress" attributes:attributes];
	}
}

- (void)provideConfirmationAtEvent:(NSInteger)eventID withCollection_id:(NSString *)collection_id {
    
	if (collection_id != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID], @"collection_id" : collection_id}};
        
		[self JSONObjectWithNamespace:@"payment" method:@"provideConfirmation" attributes:attributes];
	}
}

@end