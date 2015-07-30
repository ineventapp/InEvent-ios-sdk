//
//  INEventToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INToken.h"
#import "INAPIController.h"

@interface INEventToken : INToken <INTokenSingleton>

- (void)updateValuesWithDictionary:(NSDictionary *)dictionary;

- (BOOL)isEventSelected;
- (void)removeEvent;

@end
