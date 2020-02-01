#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INReportWidgetAPIController : INAPIController

#pragma mark - ReportWidget
- (void)findAuthenticatedWithCache:(NSString *)cache withOrder:(NSString *)order withTerm:(NSString *)term withFilter:(NSString *)filter withWidgets:(NSString *)widgets;
- (void)createAuthenticatedAtReport:(NSInteger)reportID withPosition:(NSString *)position withWidget:(NSString *)widget withName:(NSString *)name withSource:(NSString *)source;
- (void)editAuthenticatedAtReportWidget:(NSInteger)reportWidgetID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtReportWidget:(NSInteger)reportWidgetID;
@end
