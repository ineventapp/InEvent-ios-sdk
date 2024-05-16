#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityAPIController : INAPIController

#pragma mark - Activity
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withLocation:(NSString *)location withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withCapacity:(NSString *)capacity;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withPush:(NSString *)push withValue:(NSString *)value;
- (void)removeAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection forPerson:(NSInteger)personID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withPaginated:(NSString *)paginated;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection atList:(NSInteger)listID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)findAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd withInvite:(NSString *)invite;
- (void)findAtEventWithDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAtActivity:(NSInteger)activityID;
- (void)getDaysAuthenticatedAtEventWithActivities:(NSString *)activities withQuery:(NSString *)query;
- (void)copyAuthenticatedAtActivity:(NSInteger)activityID;
- (void)delayAuthenticatedAtActivity:(NSInteger)activityID withMinutes:(NSString *)minutes withSubsequent:(NSString *)subsequent;
@end
