//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventPhotoAPIController.h"

@implementation InEventPhotoAPIController

#pragma mark - Photo
- (void)postPhoto:(NSString *)url AtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && url != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"url" : url}};
        
        [self JSONObjectWithNamespace:@"photo" method:@"post" attributes:attributes];
    }
}

- (void)getPhotosAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"photo" method:@"getPhotos" attributes:attributes];
    }
}

- (void)getSinglePhoto:(NSInteger)photoID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"photoID" : [NSString stringWithFormat:@"%d", photoID]}};
        
        [self JSONObjectWithNamespace:@"photo" method:@"getSingle" attributes:attributes];
    }
}

@end
