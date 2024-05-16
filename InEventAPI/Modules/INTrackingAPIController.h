#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTrackingAPIController : INAPIController

#pragma mark - Tracking
- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)createWithTrackingToken:(NSString *)trackingToken withTarget:(NSString *)target atTarget:(NSInteger)targetID;
- (void)createAuthenticatedWithContent:(NSString *)content;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID withSelection:(NSString *)selection withRoot:(NSString *)root withModule:(NSString *)module;
- (void)getAuthenticatedAtTracking:(NSInteger)trackingID;
@end
