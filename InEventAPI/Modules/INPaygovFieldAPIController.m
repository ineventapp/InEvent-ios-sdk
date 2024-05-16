#import "INPaygovFieldAPIController.h"

@implementation INPaygovFieldAPIController

#pragma mark - PaygovField

- (void)bindAuthenticatedAtEventAtPayGovOffice:(NSInteger)payGovOfficeID withPercent:(NSString *)percent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && percent != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"payGovOfficeID" : [NSString stringWithFormat:@"%ld", (long)payGovOfficeID], @"percent" : percent}};

		[self objectWithModule:@"paygov.field" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtPaygovField:(NSInteger)paygovFieldID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"paygovFieldID" : [NSString stringWithFormat:@"%ld", (long)paygovFieldID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"paygov.field" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtPaygovField:(NSInteger)paygovFieldID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"paygovFieldID" : [NSString stringWithFormat:@"%ld", (long)paygovFieldID]}};

		[self objectWithModule:@"paygov.field" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"paygov.field" method:@"find" attributes:attributes];
	}
}

@end
