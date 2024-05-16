#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMapItemAPIController : INAPIController

#pragma mark - MapItem
- (void)createAuthenticatedAtMap:(NSInteger)mapID atMapItem:(NSInteger)mapItemID withPlaces:(NSString *)places withPlace:(NSString *)place withStruct:(NSString *)struct withPoint:(NSString *)point withPaths:(NSString *)paths withPath:(NSString *)path;
- (void)editAuthenticatedAtMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMapItem:(NSInteger)mapItemID;
- (void)findAuthenticatedAtEvent;
- (void)favoriteAuthenticatedAtEventAtMap:(NSInteger)mapID atMapItem:(NSInteger)mapItemID;
@end
