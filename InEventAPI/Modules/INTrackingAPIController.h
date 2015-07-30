#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTrackingAPIController : INAPIController

#pragma mark - Tracking
- (void)createAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)createAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withDate:(NSString *)date;
- (void)createAuthenticatedWithContent:(NSString *)content;
- (void)createWithContent:(NSString *)content;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtEventWithRoot:(NSString *)root withModule:(NSString *)module;
- (void)getAuthenticatedAtTracking:(NSInteger)trackingID;
@end