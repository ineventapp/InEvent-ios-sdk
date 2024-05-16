#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLivePersonAPIController : INAPIController

#pragma mark - LivePerson
- (void)findAuthenticatedAtLive:(NSInteger)liveID;
- (void)keepAliveAuthenticatedAtLive:(NSInteger)liveID;
- (void)analyticsFindAuthenticatedAtEventWithSelection:(NSString *)selection withOrder:(NSString *)order withQuery:(NSString *)query;
- (void)analyticsGetWithVisualForceToken:(NSString *)visualForceToken atCompany:(NSInteger)companyID forPerson:(NSInteger)personID withGroupBy:(NSString *)groupBy withQuery:(NSString *)query;
- (void)analyticsGetAuthenticatedAtEventAtCompany:(NSInteger)companyID forPerson:(NSInteger)personID withGroupBy:(NSString *)groupBy withQuery:(NSString *)query;
- (void)sessionHistoryAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
