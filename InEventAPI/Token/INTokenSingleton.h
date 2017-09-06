//
//  INTokenSingleton.h
//  InEvent
//
//  Created by Pedro Góes on 16/07/14.
//  Copyright (c) 2014 InEvent. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol INTokenSingleton <NSObject>

#pragma mark - Singleton
+ (instancetype)sharedInstance;

@end
