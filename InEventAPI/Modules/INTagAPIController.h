#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTagAPIController : INAPIController

#pragma mark - Tag
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtTag:(NSInteger)tagID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTag:(NSInteger)tagID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtTag:(NSInteger)tagID;
@end
