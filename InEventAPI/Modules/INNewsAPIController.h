#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INNewsAPIController : INAPIController

#pragma mark - News
- (void)createAuthenticatedAtEventForPerson:(NSInteger)personID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date;
- (void)createAuthenticatedAtEventWithMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date;
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date;
- (void)createAuthenticatedAtList:(NSInteger)listID withMessage:(NSString *)message withChannel:(NSString *)channel withScheduled:(NSString *)scheduled withDate:(NSString *)date;
- (void)editAtNews:(NSInteger)newsID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtNews:(NSInteger)newsID;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtList:(NSInteger)listID;
- (void)getAtNews:(NSInteger)newsID;
@end
