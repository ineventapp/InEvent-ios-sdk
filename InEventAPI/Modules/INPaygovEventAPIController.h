#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPaygovEventAPIController : INAPIController

#pragma mark - PaygovEvent
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withDateBegin:(NSString *)dateBegin withDateEnd:(NSString *)dateEnd;
- (void)getAuthenticatedAtEvent;
@end
