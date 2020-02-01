#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAuditAPIController : INAPIController

#pragma mark - Audit
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withQuery:(NSString *)query withQueryKey:(NSString *)queryKey withQueryContent:(NSString *)queryContent;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query withQueryKey:(NSString *)queryKey withQueryContent:(NSString *)queryContent;
@end
