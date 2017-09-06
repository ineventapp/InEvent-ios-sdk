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

- (void)crossTemporary:(NSString *)eventID runningRequest:(void (^)())request;
- (BOOL)isSelected;

@end
