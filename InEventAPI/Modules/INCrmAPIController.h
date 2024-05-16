#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INCrmAPIController : INAPIController

#pragma mark - Crm
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withProvider:(NSString *)provider withOffset:(NSString *)offset withSearch:(NSString *)search withCampaignId:(NSString *)campaignId;
- (void)importAuthenticatedAtEventWithProvider:(NSString *)provider withImportPlace:(NSString *)importPlace atList:(NSInteger)listID withRaw:(NSString *)raw withCampaignId:(NSString *)campaignId withContent:(NSString *)content;
- (void)exportAuthenticatedAtEventWithProvider:(NSString *)provider withExportPlace:(NSString *)exportPlace atList:(NSInteger)listID withCampaignId:(NSString *)campaignId withContent:(NSString *)content;
- (void)findCampaignsAuthenticatedAtEventAtCompany:(NSInteger)companyID withProvider:(NSString *)provider withOffset:(NSString *)offset withQuery:(NSString *)query withCampaignId:(NSString *)campaignId;
- (void)findCampaignsAuthenticatedAtEventWithProvider:(NSString *)provider withOffset:(NSString *)offset withQuery:(NSString *)query withCampaignId:(NSString *)campaignId;
@end
