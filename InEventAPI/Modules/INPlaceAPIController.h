#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPlaceAPIController : INAPIController

#pragma mark - Place
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withCategory:(NSString *)category withCapacity:(NSString *)capacity withRestricted:(NSString *)restricted;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withCategory:(NSString *)category withCapacity:(NSString *)capacity withRestricted:(NSString *)restricted;
- (void)editAuthenticatedAtPlace:(NSInteger)placeID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtPlace:(NSInteger)placeID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)findCategoriesAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findCategoriesAuthenticatedAtEvent;
- (void)getAuthenticatedAtPlace:(NSInteger)placeID;
@end
