//
//  ExampleController.m
//  InEvent
//
//  Created by Pedro Góes on 29/10/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "ExampleController.h"
#import "InEventEventAPIController.h"

@implementation ExampleController

#pragma mark - APIController Delegate

- (id) init {
    if (self = [super init]) {
        [[[InEventEventAPIController alloc] initWithDelegate:self forcing:YES withMaxAge:3600 withUserInfo:nil] getEvents];
    }
    return self;
}

- (void)apiController:(InEventAPIController *)apiController didLoadDictionaryFromServer:(NSDictionary *)dictionary {
    
    if ([apiController.method isEqualToString:@"method"]) {
        
        // Do something with your data
        NSLog(@"error: %@", [[dictionary objectForKey:@"data"] description]);
    }
}

- (void)apiController:(InEventAPIController *)apiController didSaveForLaterWithError:(NSError *)error {
    // Save your data to have a consistent UI
}

- (void)apiController:(InEventAPIController *)apiController didFailWithError:(NSError *)error {
    // Treat your error
}

@end
