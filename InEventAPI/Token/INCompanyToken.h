//
//  INCompanyToken.h
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INToken.h"
#import "INAPIController.h"

@interface INCompanyToken : INToken <INTokenSingleton>

- (BOOL)isSelected;

@end
