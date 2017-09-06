#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLodgingAPIController : INAPIController

#pragma mark - Lodging
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withCapacity:(NSString *)capacity withPrice:(NSString *)price withAddress:(NSString *)address;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtLodging:(NSInteger)lodgingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection;
- (void)getAuthenticatedAtLodging:(NSInteger)lodgingID;
@end