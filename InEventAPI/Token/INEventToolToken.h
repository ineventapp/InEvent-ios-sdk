//
//  INEventToolToken.h
//  InEvent
//
//  Created by Pedro Góes on 18/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INToken.h"

@interface INEventToolToken : INToken <INTokenSingleton>

- (void)overwriteWithDictionary:(NSDictionary *)dictionary;

@end
