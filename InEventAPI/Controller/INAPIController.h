//
//  INAPIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIControllerDelegate.h"
#import "INEventToken.h"
#import "INPersonToken.h"

#ifdef DEBUG
    #if SNAPSHOT
        #define IN_URL @"https://inevent.us/"
        #define IN_URL_API @"https://inevent.us/api/"
    #elif TARGET_IPHONE_SIMULATOR
//        #define IN_URL @"https://inevent.us/"
//        #define IN_URL_API @"https://inevent.us/api/"
        #define IN_URL @"http://inevent.local:8888/"
        #define IN_URL_API @"http://inevent.local:8888/api/"
    #else
        #define IN_URL @"https://inevent.us/"
        #define IN_URL_API @"https://inevent.us/api/"
    #endif
#else
    #define IN_URL @"https://inevent.us/"
    #define IN_URL_API @"https://inevent.us/api/"
#endif

@interface INAPIController : NSObject <NSURLConnectionDelegate, NSCoding>

@property (strong, nonatomic) id<INAPIControllerDelegate> delegate;
// Override the maxAge checkpoint
@property (assign, nonatomic) BOOL force;
// Save controller for later syncing
@property (assign, nonatomic) BOOL saveForLater;
// Return our data stored previously on cache - YES read - NO write
@property (assign, nonatomic) BOOL returnPreviousSave;
// Maximum allowed age of the cache
@property (assign, nonatomic) NSTimeInterval maxAge;
// Dictionary as a reference point
@property (strong, nonatomic) NSDictionary *userInfo;
// The given version for this controller
@property (strong, nonatomic, readonly) NSString *version;
// The given module for the requisition
@property (strong, nonatomic, readonly) NSString *module;
// The given method for the requisition
@property (strong, nonatomic, readonly) NSString *method;
// The given attributes for this requisition
@property (strong, nonatomic, readonly) NSDictionary *attributes;
// Path for the current json file
@property (strong, nonatomic, readonly) NSString *path;

#pragma mark - Initializers
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate;
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave;
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate returnPreviousSave:(BOOL)aReturnPreviousSave withUserInfo:(NSDictionary *)aUserInfo;

#pragma mark - Setup
- (void)JSONObjectWithModule:(NSString *)module method:(NSString *)method attributes:(NSDictionary *)attributes;

#pragma mark - Connection Support
- (void)startAsyncronousDownload;

@end
