#import "INActivitySpeakerAPIController.h"

@implementation INActivitySpeakerAPIController

#pragma mark - ActivitySpeaker

- (void)bindAuthenticatedAtActivity:(NSInteger)activityID atSpeaker:(NSInteger)speakerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

		[self objectWithModule:@"activity.speaker" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtActivity:(NSInteger)activityID atSpeaker:(NSInteger)speakerID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"activity.speaker" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtActivity:(NSInteger)activityID atSpeaker:(NSInteger)speakerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID], @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

		[self objectWithModule:@"activity.speaker" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtActivity:(NSInteger)activityID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%ld", (long)activityID]}};

		[self objectWithModule:@"activity.speaker" method:@"find" attributes:attributes];
	}
}

- (void)findAuthenticatedAtSpeaker:(NSInteger)speakerID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

		[self objectWithModule:@"activity.speaker" method:@"find" attributes:attributes];
	}
}

@end
