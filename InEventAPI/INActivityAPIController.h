#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityAPIController : INAPIController

#pragma mark - Activity
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAtEvent;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAtActivity:(NSInteger)activityID;

@end