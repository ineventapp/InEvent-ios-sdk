#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLicenseAPIController : INAPIController

#pragma mark - License
- (void)createAuthenticatedWithUsername:(NSString *)username withCourse:(NSString *)course withLocation:(NSString *)location;
- (void)editAuthenticatedWithNumber:(NSString *)number withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedWithNumber:(NSString *)number;
- (void)findWithQuery:(NSString *)query;
- (void)getWithNumber:(NSString *)number;
- (void)requestWithNumber:(NSString *)number withLeadEmail:(NSString *)leadEmail;
@end
