#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMapAPIController : INAPIController

#pragma mark - Map
- (void)createAuthenticatedAtEventWithName:(NSString *)name withFloorName:(NSString *)floorName withFloorSequence:(NSString *)floorSequence withCenter:(NSString *)center withBounds:(NSString *)bounds withDescription:(NSString *)description withLocation:(NSString *)location withPreview:(NSString *)preview withExtra:(NSString *)extra atParent:(NSInteger)parentID;
- (void)editAuthenticatedAtMap:(NSInteger)mapID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtEventAtMap:(NSInteger)mapID withVisible:(NSString *)visible;
- (void)removeAuthenticatedAtMap:(NSInteger)mapID;
@end
