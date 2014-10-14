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
    INPersonStateDenied,
    INPersonStateApproved
} INPersonState;

typedef enum {
    INPersonRoleAttendee = 1,
    INPersonRoleStaff = 2,
    INPersonRoleCoordinator = 4
} INPersonRole;

typedef enum {
    INPersonPermissionWorking = 6
} INPersonPermission;

@protocol INPerson <NSObject>

@end
