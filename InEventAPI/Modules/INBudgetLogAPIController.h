#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INBudgetLogAPIController : INAPIController

#pragma mark - BudgetLog
- (void)findAuthenticatedAtEventAtBudget:(NSInteger)budgetID;
@end
