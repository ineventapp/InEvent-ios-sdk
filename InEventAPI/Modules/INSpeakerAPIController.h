#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSpeakerAPIController : INAPIController

#pragma mark - Speaker
- (void)createAuthenticatedAtEventWithName:(NSString *)name withHeadline:(NSString *)headline withImage:(NSString *)image;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtSpeaker:(NSInteger)speakerID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtSpeaker:(NSInteger)speakerID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withCategorized:(NSString *)categorized;
- (void)findAuthenticatedAtEventWithCategorized:(NSString *)categorized;
- (void)findAtEventWithCategorized:(NSString *)categorized;
- (void)getAuthenticatedAtSpeaker:(NSInteger)speakerID;
- (void)getAtSpeaker:(NSInteger)speakerID;
@end
