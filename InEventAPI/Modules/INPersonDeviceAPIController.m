#import "INPersonDeviceAPIController.h"

@implementation INPersonDeviceAPIController

#pragma mark - PersonDevice

- (void)bindAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey {

	if (model != nil && deviceKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"model" : model, @"deviceKey" : deviceKey}};

		[self JSONObjectWithModule:@"person.device" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCompany:(NSInteger)companyID withModel:(NSString *)model withDeviceKey:(NSString *)deviceKey {

	if (model != nil && deviceKey != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"companyID" : [NSString stringWithFormat:@"%d", companyID]}, @"POST" : @{@"model" : model, @"deviceKey" : deviceKey}};

		[self JSONObjectWithModule:@"person.device" method:@"dismiss" attributes:attributes];
	}
}

@end