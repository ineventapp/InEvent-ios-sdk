//
//  InEventAPIControllerDelegate.h
//  InEvent
//
//  Created by Pedro Góes on 29/10/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InEventAPIController;

@protocol InEventAPIControllerDelegate <NSObject>
@optional
- (void)apiController:(InEventAPIController *)apiController didLoadDictionaryFromServer:(NSDictionary *)dictionary;
- (void)apiController:(InEventAPIController *)apiController didFailWithError:(NSError *)error;
- (void)apiController:(InEventAPIController *)apiController didSaveForLaterWithError:(NSError *)error;

@end