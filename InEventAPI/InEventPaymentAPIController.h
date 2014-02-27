//
//  InEventPaymentAPIController.h
//  InEvent
//
//  Created by Pedro Góes on 21/11/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventPaymentAPIController : InEventAPIController

#pragma mark - Payment
- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withTickets:(NSString *)tickets withAdvertisements:(NSString *)advertisements;
- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)requestAddressAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID atPayment:(NSInteger)paymentID;
- (void)provideConfirmationAtEvent:(NSInteger)eventID withCollection_id:(NSString *)collection_id;

@end
