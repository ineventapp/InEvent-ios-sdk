#import "INSpeakerTagAPIController.h"

@implementation INSpeakerTagAPIController

#pragma mark - SpeakerTag

- (void)bindAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"speaker.tag" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtSpeaker:(NSInteger)speakerID atTag:(NSInteger)tagID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID], @"tagID" : [NSString stringWithFormat:@"%ld", (long)tagID]}};

		[self objectWithModule:@"speaker.tag" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAtSpeaker:(NSInteger)speakerID {



	NSDictionary *attributes = @{@"GET" : @{@"speakerID" : [NSString stringWithFormat:@"%ld", (long)speakerID]}};

	[self objectWithModule:@"speaker.tag" method:@"find" attributes:attributes];
}

@end