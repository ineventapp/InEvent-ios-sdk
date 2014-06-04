//
//  INPersonToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INPersonToken.h"

@implementation INPersonToken

#pragma mark - Singleton

+ (INPersonToken *)sharedInstance
{
    static INPersonToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INPersonToken alloc] init];
        // Load the data that is already stored
        [sharedInstance loadEssentialData];
    });
    return sharedInstance;
}

#pragma mark - Setters

- (void)setTokenID:(NSString *)tokenID {
    _tokenID = tokenID;
    
    [self storeEssentialData];
}

- (void)setMemberID:(NSInteger)memberID {
    _memberID = memberID;
    
    [self storeEssentialData];
}

- (void)setApproved:(INPersonState)approved {
    _approved = approved;
    
    [self storeEssentialData];
}

- (void)setRole:(INPersonRole)role {
    _role = role;
    
    [self storeEssentialData];
}

- (void)setName:(NSString *)name {
    _name = name;
    
    [self storeEssentialData];
}


#pragma mark - Data

- (NSString *)essentialDataPath {
    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"essentialHumanData.bin"];
    
    return path;
}

- (void)storeEssentialData {
    
    // Only store data if its is meaningful
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    [dictionary setValue:_tokenID forKey:@"tokenID"];
    [dictionary setValue:[NSNumber numberWithInteger:_memberID] forKey:@"memberID"];
    [dictionary setValue:[NSNumber numberWithInteger:_approved] forKey:@"approved"];
    [dictionary setValue:[NSNumber numberWithInteger:_role] forKey:@"role"];
    [dictionary setValue:_name forKey:@"name"];
    
    // Save it
    [dictionary writeToFile:[self essentialDataPath] atomically:YES];
}

- (void)loadEssentialData {
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[self essentialDataPath]];
    
    if (dictionary != nil) {
        _tokenID = [dictionary valueForKey:@"tokenID"];
        _memberID = [[dictionary objectForKey:@"memberID"] integerValue];
        _approved = (INPersonState)[[dictionary objectForKey:@"approved"] integerValue];
        _role = (INPersonRole)[[dictionary objectForKey:@"role"] integerValue];
        _name = [dictionary valueForKey:@"name"];
    } else {
        [self resetData];
    }
}

- (void)resetData {
    _tokenID = nil;
    _memberID = 0;
    _approved = 0;
    _role = 0;
    _name = nil;
}

- (void)dealloc {
    [self storeEssentialData];
}

#pragma mark - User Methods

- (BOOL)isMemberAuthenticated {
    if (_tokenID != nil) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isMemberApproved {
    if (_approved == INPersonStateApproved) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isMemberWorking {
    if (_role & INPersonPermissionWorking) {
        return YES;
    } else {
        return NO;
    }
}

- (void)removeMember {
    // Remove all the data
    [self resetData];
    
    [self storeEssentialData];
}

@end
