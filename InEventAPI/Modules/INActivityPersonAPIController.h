#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityPersonAPIController : INAPIController

#pragma mark - ActivityPerson
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withBypassWebhook:(NSString *)bypassWebhook withName:(NSString *)name withEmail:(NSString *)email;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID withBypassWebhook:(NSString *)bypassWebhook;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withPath:(NSString *)path;
- (void)bindAuthenticatedAtEventWithBypassWebhook:(NSString *)bypassWebhook withContent:(NSString *)content;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID;
- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID withBypassWebhook:(NSString *)bypassWebhook;
- (void)dismissAuthenticatedAtEventWithBypassWebhook:(NSString *)bypassWebhook withContent:(NSString *)content;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order withQuery:(NSString *)query;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID;
- (void)calculateAuthenticatedAtActivity:(NSInteger)activityID;
@end
