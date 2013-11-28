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
- (void)createWithTickets:(NSInteger)tickets andAdvertisements:(NSInteger)advertisements atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)getAllAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)requestAddress:(NSInteger)paymentID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID;
- (void)confirmPaymentAtEvent:(NSInteger)eventID withCollection:(NSInteger)collection_id withTokenID:(NSString *)tokenID;

@end
