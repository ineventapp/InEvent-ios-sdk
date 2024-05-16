#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTagAPIController : INAPIController

#pragma mark - Tag
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withColor:(NSString *)color withCategory:(NSString *)category withCategoryType:(NSString *)categoryType;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withColor:(NSString *)color;
- (void)editAuthenticatedAtEventAtTag:(NSInteger)tagID withKey:(NSString *)key withValue:(NSString *)value withCategoryType:(NSString *)categoryType;
- (void)removeAuthenticatedAtTag:(NSInteger)tagID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtTag:(NSInteger)tagID;
- (void)getCategoriesAuthenticatedAtEventWithCategoryType:(NSString *)categoryType;
@end
