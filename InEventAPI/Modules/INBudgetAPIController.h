#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBudgetAPIController : INAPIController

#pragma mark - Budget
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description withType:(NSString *)type withCategory:(NSString *)category withSupplier:(NSString *)supplier withStatus:(NSString *)status withPrice:(NSString *)price withDate:(NSString *)date withMode:(NSString *)mode;
- (void)editAuthenticatedAtBudget:(NSInteger)budgetID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtBudget:(NSInteger)budgetID;
- (void)getAuthenticatedAtBudget:(NSInteger)budgetID;
- (void)getCategoriesAuthenticatedAtEvent;
- (void)getSuppliersAuthenticatedAtEvent;
- (void)findAuthenticatedAtEvent;
@end
