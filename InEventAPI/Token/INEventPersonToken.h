//
//  INEventPersonToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2016 Pedro Góes. All rights reserved.
//

#import "INToken.h"
#import "INAPIController.h"

@interface INEventPersonToken : INToken <INTokenSingleton>

- (BOOL)isWorking;
- (void)updateValuesWithDictionary:(NSDictionary *)dictionary;
- (NSString *)stringByTransformingTokenizedString:(NSString *)raw;

@end
