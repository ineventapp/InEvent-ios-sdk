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
- (void)createWithTickets:(NSInteger)tickets andAdvertisements:(NSInteger)advertisements atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"tickets" : [NSString stringWithFormat:@"%d", tickets], @"advertisements" : [NSString stringWithFormat:@"%d", advertisements]}};
        
        [self JSONObjectWithNamespace:@"payment" method:@"create" attributes:attributes];
    }
}

- (void)getAllAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"payment" method:@"getAll" attributes:attributes];
    }
}

- (void)requestAddress:(NSInteger)paymentID atEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"paymentID" : [NSString stringWithFormat:@"%d", paymentID]}};
        
        [self JSONObjectWithNamespace:@"payment" method:@"requestAddress" attributes:attributes];
    }
}

- (void)confirmPaymentAtEvent:(NSInteger)eventID withCollection:(NSInteger)collection_id withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"collection_id" : [NSString stringWithFormat:@"%d", collection_id]}};
        
        [self JSONObjectWithNamespace:@"payment" method:@"confirm" attributes:attributes];
    }
}

@end
