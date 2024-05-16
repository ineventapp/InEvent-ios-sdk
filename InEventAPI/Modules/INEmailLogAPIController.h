#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEmailLogAPIController : INAPIController

#pragma mark - EmailLog
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSubject:(NSString *)subject;
- (void)getAuthenticatedAtEmailLog:(NSInteger)emailLogID;
- (void)setConversionAuthenticatedAtEmailLog:(NSInteger)emailLogID;
@end
