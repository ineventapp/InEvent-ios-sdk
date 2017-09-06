//
//  InEventPerson.h
//  InEvent
//
//  Created by Pedro Góes on 22/09/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    INPersonStateUnknown = -1,
    INPersonStateDenied = 0,
    INPersonStateApproved = 1
} INPersonState;

typedef enum {
    INPersonLevelUnknown = 0,
    INPersonLevelUser = 1,
    INPersonLevelAdmin = 4
} INPersonLevel;

typedef enum {
    INPersonPermissionWorking = 6
} INPersonPermission;

@protocol INPerson <NSObject>

@end
