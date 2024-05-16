#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INZoomAPIController : INAPIController

#pragma mark - Zoom
- (void)getAuthenticatedAtCompany:(NSInteger)companyID;
- (void)linkAccountAuthenticatedAtCompany:(NSInteger)companyID withApiKey:(NSString *)apiKey;
- (void)unlinkAccountAuthenticatedAtCompany:(NSInteger)companyID;
@end
