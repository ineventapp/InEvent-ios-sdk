#import "INBudgetLogAPIController.h"

@implementation INBudgetLogAPIController

#pragma mark - BudgetLog

- (void)findAuthenticatedAtEventAtBudget:(NSInteger)budgetID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"budgetID" : [NSString stringWithFormat:@"%ld", (long)budgetID]}};

		[self objectWithModule:@"budget.log" method:@"find" attributes:attributes];
	}
}

@end
