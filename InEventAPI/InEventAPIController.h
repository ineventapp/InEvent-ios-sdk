//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIControllerDelegate.h"

#ifdef DEBUG
    #if TARGET_IPHONE_SIMULATOR
        #define URL @"http://inevent.local:8888/developer/api/"
    #else
        //#define URL @"http://192.168.0.106:8888/InEvent-dev/Web/"
        #define URL @"https://api.inevent.us/"
    #endif
#else
    #define URL @"https://api.inevent.us/"
#endif

@interface InEventAPIController : NSObject <NSURLConnectionDelegate, NSCoding>

@property (strong, nonatomic) id<InEventAPIControllerDelegate> delegate;
// Override the maxAge checkpoint
@property (assign, nonatomic) BOOL force;
// Save controller for later syncing
@property (assign, nonatomic) BOOL saveForLater;
// Maximum allowed age of the cache
@property (assign, nonatomic) NSTimeInterval maxAge;
// Dictionary as a reference point
@property (strong, nonatomic) NSDictionary *userInfo;
// The given namespace for the requisition
@property (nonatomic, strong) NSString *namespace;
// The given method for the requisition
@property (nonatomic, strong) NSString *method;
// Path for the current json file
@property (nonatomic, strong, readonly) NSString *path;

#pragma mark - Initializers
- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate;
- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce;
- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withUserInfo:(NSDictionary *)aUserInfo;
- (id)initWithDelegate:(id<InEventAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withMaxAge:(NSTimeInterval)aMaxAge withUserInfo:(NSDictionary *)aUserInfo;

#pragma mark - Notifications
- (void)notificationGetNumberOfNotificationsAuthenticatingWithTokenID:(NSString *)tokenID;
- (void)notificationGetNotificationsAuthenticatingWithTokenID:(NSString *)tokenID;
- (void)notificationGetNotificationsSinceNotification:(NSInteger)lastNotificationID authenticatingWithTokenID:(NSString *)tokenID;
- (void)notificationGetLastNotificationIDAuthenticatingWithTokenID:(NSString *)tokenID;
- (void)notificationGetNotificationsWithinTime:(NSInteger)seconds authenticatingWithTokenID:(NSString *)tokenID;
- (void)notificationGetSingleNotification:(NSInteger)notificationID authenticatingWithTokenID:(NSString *)tokenID;

#pragma mark - Setup
- (void)JSONObjectWithNamespace:(NSString *)namespace method:(NSString *)method attributes:(NSDictionary *)attributes;

#pragma mark - Connection Support
- (void)start;

@end
