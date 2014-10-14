//
//  INAPIControllerDelegate.h
//  InEvent
//
//  Created by Pedro Góes on 29/10/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class INAPIController;

@protocol INAPIControllerDelegate <NSObject>
@optional
- (void)apiController:(INAPIController *)apiController didPartiallyReceiveDictionaryFromServer:(CGFloat)percentage;
- (void)apiController:(INAPIController *)apiController didLoadDictionaryFromServer:(NSDictionary *)dictionary;
- (void)apiController:(INAPIController *)apiController didFailWithError:(NSError *)error;
- (void)apiController:(INAPIController *)apiController didSaveForLaterWithError:(NSError *)error;

@end