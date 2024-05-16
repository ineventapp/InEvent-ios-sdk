#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INWebsiteAPIController : INAPIController

#pragma mark - Website
- (void)createOrUpdateAuthenticatedAtCompany:(NSInteger)companyID atWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position withTemplate:(NSString *)template withReset:(NSString *)reset withUrl:(NSString *)url withProject:(NSString *)project withHtml:(NSString *)html withCss:(NSString *)css withSections:(NSString *)sections withConfigs:(NSString *)configs;
- (void)createOrUpdateAuthenticatedAtEventAtWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position withTemplate:(NSString *)template withReset:(NSString *)reset withUrl:(NSString *)url withProject:(NSString *)project withHtml:(NSString *)html withCss:(NSString *)css withSections:(NSString *)sections withConfigs:(NSString *)configs;
- (void)copyAuthenticatedAtWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position;
- (void)editAuthenticatedAtEventAtWebsite:(NSInteger)websiteID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventAtWebsite:(NSInteger)websiteID;
- (void)removeAuthenticatedAtEventAtWebsite:(NSInteger)websiteID;
- (void)operateContentAuthenticatedAtEventAtWebsite:(NSInteger)websiteID atWebsiteContent:(NSInteger)websiteContentID withValue:(NSString *)value;
- (void)createOrUpdateSectionAuthenticatedAtEventAtWebsiteSection:(NSInteger)websiteSectionID atWebsite:(NSInteger)websiteID atContent:(NSInteger)contentID withSection:(NSString *)section withName:(NSString *)name withUrl:(NSString *)url withRawUrl:(NSString *)rawUrl withTitle:(NSString *)title withType:(NSString *)type withVisible:(NSString *)visible withPosition:(NSString *)position withChildren:(NSString *)children;
- (void)removeSectionAuthenticatedAtEventAtWebsiteSection:(NSInteger)websiteSectionID;
@end
