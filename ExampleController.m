//
//  ExampleController.m
//  InEvent
//
//  Created by Pedro Góes on 29/10/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "ExampleController.h"
#import "INAPI.h"

@implementation ExampleController

#pragma mark - Initialization

- (id)init {
    if (self = [super init]) {
        [[[INEventAPIController alloc] initWithDelegate:self returnPreviousSave:NO] findWithName:name withCity:city withTheme:theme withDateBegin:dateBegin withDateEnd:dateEnd withOrder:@"any"];
    }
    return self;
}

#pragma mark - APIController Delegate

- (void)apiController:(INAPIController *)apiController didPartiallyReceiveDictionaryFromServer:(CGFloat)percentage {
    // Show how much has already loaded
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
