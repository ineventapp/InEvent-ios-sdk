//
//  INTrackingToken.h
//  InEvent
//
//  Created by Pedro Góes on 20/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "INToken.h"
#import "INAPI.h"

@interface INTrackingToken : INToken <INTokenSingleton, INAPIControllerDelegate>

- (void)addToQueueWithTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)pushQueueToServer;

@end