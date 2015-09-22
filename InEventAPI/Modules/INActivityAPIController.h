#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityAPIController : INAPIController

#pragma mark - Activity
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withPush:(NSString *)push withValue:(NSString *)value;
- (void)removeAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAtEvent;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAtActivity:(NSInteger)activityID;
- (void)copyAuthenticatedAtActivity:(NSInteger)activityID;
- (void)delayAuthenticatedAtActivity:(NSInteger)activityID withMinutes:(NSString *)minutes withSubsequent:(NSString *)subsequent;
@end