#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INChecklogAPIController : INAPIController

#pragma mark - Checklog
- (void)checkInAuthenticatedAtEventAtActivity:(NSInteger)activityID withCode:(NSString *)code withDate:(NSString *)date;
- (void)checkInAuthenticatedAtEventWithCode:(NSString *)code withDate:(NSString *)date;
- (void)checkOutAuthenticatedAtEventAtActivity:(NSInteger)activityID withCode:(NSString *)code withDate:(NSString *)date;
- (void)checkOutAuthenticatedAtEventWithCode:(NSString *)code withDate:(NSString *)date;
- (void)statsAuthenticatedAtEvent;
- (void)checkedInAuthenticatedAtEvent;
- (void)checkedInAuthenticatedAtEventAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
@end
