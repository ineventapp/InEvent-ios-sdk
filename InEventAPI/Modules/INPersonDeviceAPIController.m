#import "INPersonDeviceAPIController.h"

@implementation INPersonDeviceAPIController

#pragma mark - PersonDevice

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && model != nil && deviceKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"model" : model, @"deviceKey" : deviceKey}};

		[self JSONObjectWithModule:@"person.device" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && model != nil && deviceKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}, @"POST" : @{@"model" : model, @"deviceKey" : deviceKey}};

		[self JSONObjectWithModule:@"person.device" method:@"dismiss" attributes:attributes];
	}
}

@end