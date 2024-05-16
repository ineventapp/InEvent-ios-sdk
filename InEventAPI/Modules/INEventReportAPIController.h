#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventReportAPIController : INAPIController

#pragma mark - EventReport
- (void)personSchemaAuthenticatedAtEventWithLocation:(NSString *)location;
- (void)personReportAuthenticatedAtEventWithLocation:(NSString *)location withOrder:(NSString *)order withOrderDirection:(NSString *)orderDirection withSchema:(NSString *)schema;
@end
