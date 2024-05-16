#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INExportAPIController : INAPIController

#pragma mark - Export
- (void)createAuthenticatedAtEventWithName:(NSString *)name withModule:(NSString *)module withSchema:(NSString *)schema withFrequency:(NSString *)frequency;
- (void)editAuthenticatedAtExport:(NSInteger)exportID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtExport:(NSInteger)exportID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtExport:(NSInteger)exportID;
@end
