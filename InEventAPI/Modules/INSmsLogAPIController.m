#import "INSmsLogAPIController.h"

@implementation INSmsLogAPIController

#pragma mark - SmsLog

- (void)findAuthenticatedAtEventAtListSms:(NSInteger)listSmsID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"listSmsID" : [NSString stringWithFormat:@"%ld", (long)listSmsID]}};

		[self objectWithModule:@"sms.log" method:@"find" attributes:attributes];
	}
}

@end
