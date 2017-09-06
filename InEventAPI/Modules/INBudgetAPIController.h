#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBudgetAPIController : INAPIController

#pragma mark - Budget
- (void)createAuthenticatedAtEventWithDescription:(NSString *)description withType:(NSString *)type withPrice:(NSString *)price withDate:(NSString *)date;
- (void)findAuthenticatedAtEvent;
- (void)removeAuthenticatedAtBudget:(NSInteger)budgetID;
@end