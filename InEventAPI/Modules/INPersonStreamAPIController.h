#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonStreamAPIController : INAPIController

#pragma mark - PersonStream
- (void)editAuthenticatedAtActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtActivity:(NSInteger)activityID forPerson:(NSInteger)personID;
@end
