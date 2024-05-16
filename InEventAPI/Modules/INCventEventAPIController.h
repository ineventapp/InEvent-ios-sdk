#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCventEventAPIController : INAPIController

#pragma mark - CventEvent
- (void)bindAuthenticatedAtEventWithCventId:(NSString *)cventId;
- (void)dismissAuthenticatedAtEvent;
- (void)getAuthenticatedAtEvent;
- (void)findOnCventAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query;
- (void)getOnCventAuthenticatedAtCompany:(NSInteger)companyID withCventId:(NSString *)cventId;
- (void)syncAuthenticatedAtEvent;
@end
