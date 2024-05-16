#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLodgingAPIController : INAPIController

#pragma mark - Lodging
- (void)createAuthenticatedAtEventWithName:(NSString *)name withCapacity:(NSString *)capacity withPrice:(NSString *)price withDescription:(NSString *)description withAddress:(NSString *)address;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtLodging:(NSInteger)lodgingID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withSort:(NSString *)sort withOrder:(NSString *)order;
- (void)getAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)statsAuthenticatedAtEvent;
@end
