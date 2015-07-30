#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSocialAPIController : INAPIController

#pragma mark - Social
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)editAuthenticatedAtSocial:(NSInteger)socialID withKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtSocial:(NSInteger)socialID;
@end