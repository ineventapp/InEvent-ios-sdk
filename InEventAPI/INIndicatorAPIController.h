#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INIndicatorAPIController : INAPIController

#pragma mark - Indicator
- (void)createAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)editAuthenticatedAtIndicator:(NSInteger)indicatorID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtIndicator:(NSInteger)indicatorID;
- (void)findAtEvent;
- (void)getAtIndicator:(NSInteger)indicatorID;

@end