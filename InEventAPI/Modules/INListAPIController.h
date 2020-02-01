#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INListAPIController : INAPIController

#pragma mark - List
- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color;
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtList:(NSInteger)listID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtList:(NSInteger)listID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;
- (void)getAuthenticatedAtList:(NSInteger)listID;
- (void)copyAuthenticatedAtEventAtList:(NSInteger)listID;
- (void)importAuthenticatedAtEventAtSource:(NSInteger)sourceID atTarget:(NSInteger)targetID;
@end
