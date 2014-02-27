//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventAdAPIController.h"

@implementation InEventAdAPIController

#pragma mark - Ad

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withImage:(NSString *)image withWeight:(NSString *)weight {
    
	if (tokenID != nil && image != nil && weight != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"image" : image, @"weight" : weight}};
        
		[self JSONObjectWithNamespace:@"ad" method:@"create" attributes:attributes];
	}
}

- (void)createForExhibitorAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID withImage:(NSString *)image withWeight:(NSString *)weight {
    
	if (tokenID != nil && image != nil && weight != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID], @"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}, @"POST" : @{@"image" : image, @"weight" : weight}};
        
		[self JSONObjectWithNamespace:@"ad" method:@"createForExhibitor" attributes:attributes];
	}
}

- (void)getAllAtEvent:(NSInteger)eventID {
    
	NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
    
	[self JSONObjectWithNamespace:@"ad" method:@"getAll" attributes:attributes];
}

- (void)getAllByExhibitorAtEvent:(NSInteger)eventID forExhibitor:(NSInteger)exhibitorID {
    
	NSDictionary *attributes = @{@"GET" : @{@"eventID" : [NSString stringWithFormat:@"%d", eventID], @"exhibitorID" : [NSString stringWithFormat:@"%d", exhibitorID]}};
    
	[self JSONObjectWithNamespace:@"ad" method:@"getAllByExhibitor" attributes:attributes];
}

- (void)seenAdAtAd:(NSInteger)adID {
    
	NSDictionary *attributes = @{@"GET" : @{@"adID" : [NSString stringWithFormat:@"%d", adID]}};
    
	[self JSONObjectWithNamespace:@"ad" method:@"seenAd" attributes:attributes];
}

@end