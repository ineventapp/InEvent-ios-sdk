#import "INWebsiteAPIController.h"

@implementation INWebsiteAPIController

#pragma mark - Website

- (void)createOrUpdateAuthenticatedAtCompany:(NSInteger)companyID atWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position withTemplate:(NSString *)template withReset:(NSString *)reset withUrl:(NSString *)url withProject:(NSString *)project withHtml:(NSString *)html withCss:(NSString *)css withSections:(NSString *)sections withConfigs:(NSString *)configs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && active != nil && position != nil && template != nil && reset != nil && url != nil && project != nil && html != nil && css != nil && sections != nil && configs != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID], @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID], @"name" : name, @"active" : active, @"position" : position, @"template" : template, @"reset" : reset}, @"POST" : @{@"url" : url, @"project" : project, @"html" : html, @"css" : css, @"sections" : sections, @"configs" : configs}};

		[self objectWithModule:@"website" method:@"createOrUpdate" attributes:attributes];
	}
}

- (void)createOrUpdateAuthenticatedAtEventAtWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position withTemplate:(NSString *)template withReset:(NSString *)reset withUrl:(NSString *)url withProject:(NSString *)project withHtml:(NSString *)html withCss:(NSString *)css withSections:(NSString *)sections withConfigs:(NSString *)configs {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && name != nil && active != nil && position != nil && template != nil && reset != nil && url != nil && project != nil && html != nil && css != nil && sections != nil && configs != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID], @"name" : name, @"active" : active, @"position" : position, @"template" : template, @"reset" : reset}, @"POST" : @{@"url" : url, @"project" : project, @"html" : html, @"css" : css, @"sections" : sections, @"configs" : configs}};

		[self objectWithModule:@"website" method:@"createOrUpdate" attributes:attributes];
	}
}

- (void)copyAuthenticatedAtWebsite:(NSInteger)websiteID withName:(NSString *)name withActive:(NSString *)active withPosition:(NSString *)position {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && name != nil && active != nil && position != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID], @"name" : name, @"active" : active, @"position" : position}};

		[self objectWithModule:@"website" method:@"copy" attributes:attributes];
	}
}

- (void)editAuthenticatedAtEventAtWebsite:(NSInteger)websiteID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"website" method:@"edit" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCompany:(NSInteger)companyID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"companyID" : [NSString stringWithFormat:@"%ld", (long)companyID]}};

		[self objectWithModule:@"website" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"website" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtEventAtWebsite:(NSInteger)websiteID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID]}};

		[self objectWithModule:@"website" method:@"get" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtEventAtWebsite:(NSInteger)websiteID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID]}};

		[self objectWithModule:@"website" method:@"remove" attributes:attributes];
	}
}

- (void)operateContentAuthenticatedAtEventAtWebsite:(NSInteger)websiteID atWebsiteContent:(NSInteger)websiteContentID withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID], @"websiteContentID" : [NSString stringWithFormat:@"%ld", (long)websiteContentID]}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"website" method:@"operateContent" attributes:attributes];
	}
}

- (void)createOrUpdateSectionAuthenticatedAtEventAtWebsiteSection:(NSInteger)websiteSectionID atWebsite:(NSInteger)websiteID atContent:(NSInteger)contentID withSection:(NSString *)section withName:(NSString *)name withUrl:(NSString *)url withRawUrl:(NSString *)rawUrl withTitle:(NSString *)title withType:(NSString *)type withVisible:(NSString *)visible withPosition:(NSString *)position withChildren:(NSString *)children {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && section != nil && name != nil && url != nil && rawUrl != nil && title != nil && type != nil && visible != nil && position != nil && children != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteSectionID" : [NSString stringWithFormat:@"%ld", (long)websiteSectionID], @"websiteID" : [NSString stringWithFormat:@"%ld", (long)websiteID]}, @"POST" : @{@"contentID" : [NSString stringWithFormat:@"%ld", (long)contentID], @"section" : section, @"name" : name, @"url" : url, @"rawUrl" : rawUrl, @"title" : title, @"type" : type, @"visible" : visible, @"position" : position, @"children" : children}};

		[self objectWithModule:@"website" method:@"createOrUpdateSection" attributes:attributes];
	}
}

- (void)removeSectionAuthenticatedAtEventAtWebsiteSection:(NSInteger)websiteSectionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"websiteSectionID" : [NSString stringWithFormat:@"%ld", (long)websiteSectionID]}};

		[self objectWithModule:@"website" method:@"removeSection" attributes:attributes];
	}
}

@end
