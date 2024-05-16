#import "INCertificateOverrideAPIController.h"

@implementation INCertificateOverrideAPIController

#pragma mark - CertificateOverride

- (void)bindAuthenticatedAtCertificate:(NSInteger)certificateID withTemplate:(NSString *)template withKey:(NSString *)key withContent:(NSString *)content withCss:(NSString *)css {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && template != nil && key != nil && content != nil && css != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID], @"template" : template}, @"POST" : @{@"key" : key, @"content" : content, @"css" : css}};

		[self objectWithModule:@"certificate.override" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID withKey:(NSString *)key withTemplate:(NSString *)template withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && template != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateOverrideID" : [NSString stringWithFormat:@"%ld", (long)certificateOverrideID], @"key" : key, @"template" : template}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"certificate.override" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateOverrideID" : [NSString stringWithFormat:@"%ld", (long)certificateOverrideID]}};

		[self objectWithModule:@"certificate.override" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtCertificate:(NSInteger)certificateID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID]}};

		[self objectWithModule:@"certificate.override" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtCertificate:(NSInteger)certificateID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateID" : [NSString stringWithFormat:@"%ld", (long)certificateID]}};

		[self objectWithModule:@"certificate.override" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtCertificateOverride:(NSInteger)certificateOverrideID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"certificateOverrideID" : [NSString stringWithFormat:@"%ld", (long)certificateOverrideID]}};

		[self objectWithModule:@"certificate.override" method:@"get" attributes:attributes];
	}
}

@end
