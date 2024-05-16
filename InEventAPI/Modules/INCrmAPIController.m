#import "INCrmAPIController.h"

@implementation INCrmAPIController

#pragma mark - Crm

- (void)findAuthenticatedAtCompany:(NSInteger)companyID withProvider:(NSString *)provider withOffset:(NSString *)offset withSearch:(NSString *)search withCampaignId:(NSString *)campaignId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && provider != nil && offset != nil && search != nil && campaignId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"provider" : provider, @"offset" : offset, @"search" : search, @"campaignId" : campaignId}};

		[self objectWithModule:@"crm" method:@"find" attributes:attributes];
	}
}

- (void)importAuthenticatedAtEventWithProvider:(NSString *)provider withImportPlace:(NSString *)importPlace atList:(NSInteger)listID withRaw:(NSString *)raw withCampaignId:(NSString *)campaignId withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && provider != nil && importPlace != nil && raw != nil && campaignId != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"provider" : provider, @"importPlace" : importPlace, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"raw" : raw, @"campaignId" : campaignId}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"crm" method:@"import" attributes:attributes];
	}
}

- (void)exportAuthenticatedAtEventWithProvider:(NSString *)provider withExportPlace:(NSString *)exportPlace atList:(NSInteger)listID withCampaignId:(NSString *)campaignId withContent:(NSString *)content {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && provider != nil && exportPlace != nil && campaignId != nil && content != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"provider" : provider, @"exportPlace" : exportPlace, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID], @"campaignId" : campaignId}, @"POST" : @{@"content" : content}};

		[self objectWithModule:@"crm" method:@"export" attributes:attributes];
	}
}

- (void)findCampaignsAuthenticatedAtEventAtCompany:(NSInteger)companyID withProvider:(NSString *)provider withOffset:(NSString *)offset withQuery:(NSString *)query withCampaignId:(NSString *)campaignId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && provider != nil && offset != nil && query != nil && campaignId != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"provider" : provider, @"offset" : offset, @"query" : query, @"campaignId" : campaignId, @"eventID" : eventID}};

		[self objectWithModule:@"crm" method:@"findCampaigns" attributes:attributes];
	}
}

- (void)findCampaignsAuthenticatedAtEventWithProvider:(NSString *)provider withOffset:(NSString *)offset withQuery:(NSString *)query withCampaignId:(NSString *)campaignId {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && provider != nil && offset != nil && query != nil && campaignId != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"provider" : provider, @"offset" : offset, @"query" : query, @"campaignId" : campaignId}};

		[self objectWithModule:@"crm" method:@"findCampaigns" attributes:attributes];
	}
}

@end
