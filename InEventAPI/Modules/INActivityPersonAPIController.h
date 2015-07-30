#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INActivityPersonAPIController : INAPIController

#pragma mark - ActivityPerson
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withEmail:(NSString *)email;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID withPath:(NSString *)path;
- (void)bindAuthenticatedAtActivity:(NSInteger)activityID;
- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)operateAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID;
@end