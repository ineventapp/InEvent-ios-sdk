#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventScannerAPIController : INAPIController

#pragma mark - EventScanner
- (void)createAuthenticatedAtEventAtEventScanner:(NSInteger)eventScannerID withName:(NSString *)name withEmail:(NSString *)email withRole:(NSString *)role withCompany:(NSString *)company withTelephone:(NSString *)telephone withWebsite:(NSString *)website;
- (void)removeAuthenticatedAtEventAtEventScanner:(NSInteger)eventScannerID;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query;
@end
