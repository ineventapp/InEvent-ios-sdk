//
//  INAPIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIControllerDelegate.h"

#ifdef DEBUG
    #if TARGET_IPHONE_SIMULATOR
        #define URL @"http://inevent.local:8888/"
        #define URL_API @"http://inevent.local:8888/developer/"
    #else
        //#define URL @"http://192.168.1.73:8888/INEvent-dev/Web/"
        //#define URL_API @"https://api.inevent.us/"
        #define URL @"http://inevent.us/"
        #define URL_API @"https://api.inevent.us/"
    #endif
#else
    #define URL @"http://inevent.us/"
    #define URL_API @"https://api.inevent.us/"
#endif

@interface INAPIController : NSObject <NSURLConnectionDelegate, NSCoding>

@property (strong, nonatomic) id<INAPIControllerDelegate> delegate;
// Override the maxAge checkpoint
@property (assign, nonatomic) BOOL force;
// Save controller for later syncing
@property (assign, nonatomic) BOOL saveForLater;
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
// Reference to the original selector
@property (strong, nonatomic, readonly) NSString *caller;

#pragma mark - Initializers
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate;
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce;
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withUserInfo:(NSDictionary *)aUserInfo;
- (id)initWithDelegate:(id<INAPIControllerDelegate>)aDelegate forcing:(BOOL)aForce withMaxAge:(NSTimeInterval)aMaxAge withUserInfo:(NSDictionary *)aUserInfo;

#pragma mark - Verification
- (BOOL)isRepresentedBySelector:(SEL)selector;

#pragma mark - Setup
- (void)JSONObjectWithModule:(NSString *)module method:(NSString *)method attributes:(NSDictionary *)attributes;

#pragma mark - Connection Support
- (void)startAsyncronousDownload;

@end
