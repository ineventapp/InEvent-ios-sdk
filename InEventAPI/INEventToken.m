//
//  InEventEventToken.m
//  InEvent
//
//  Created by Pedro Góes on 06/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "INEventToken.h"

@implementation INEventToken

#pragma mark - Singleton

+ (INEventToken *)sharedInstance
{
    static INEventToken *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[INEventToken alloc] init];
        // Load the data that is already stored
        [sharedInstance loadEssentialData];
    });
    return sharedInstance;
}

#pragma mark - Setters

- (void)setEventID:(NSInteger)eventID {
    _eventID = eventID;
    
    [self storeEssentialData];
}

- (void)setName:(NSString *)name {
    _name = name;
    
    [self storeEssentialData];
}

- (void)setNick:(NSString *)nick {
    _nick = nick;
    
    [self storeEssentialData];
}

#pragma mark - User Methods

- (BOOL)isEventSelected {
    if (_eventID != 0) {
        return YES;
    } else {
        return NO;
    }
}

- (void)removeEvent {
    // Remove all the data
    [self resetData];
    
    // Save the data
    [self storeEssentialData];
    
    // Notify about the enterprise removal
    [[NSNotificationCenter defaultCenter] postNotificationName:@"selectFirstController" object:nil];
    
    // And delete it from the filesystem
    [[NSFileManager defaultManager] removeItemAtPath:[self essentialDataPath] error:nil];
}

#pragma mark - Data

- (NSString *)essentialDataPath {
    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent: @"Documents"] stringByAppendingPathComponent:@"essentialCompanyData.bin"];
    
    return path;
}

- (void)storeEssentialData {
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    // Set the values on the dictionary
    [dictionary setValue:[NSNumber numberWithInteger:_eventID] forKey:@"eventID"];
    [dictionary setValue:_name forKey:@"name"];
    [dictionary setValue:_nick forKey:@"nick"];
    
    // Save it
    [dictionary writeToFile:[self essentialDataPath] atomically:YES];
}

- (void)loadEssentialData {
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:[self essentialDataPath]];
    
    if (dictionary != nil) {
        _eventID = [[dictionary objectForKey:@"eventID"] integerValue];
        _name = [dictionary objectForKey:@"name"];
        _nick = [dictionary objectForKey:@"nick"];
    } else {
        [self resetData];
    }
}

- (void)resetData {
    _eventID = 0;
    _name = nil;
    _nick = nil;
}

- (void)dealloc {
    [self storeEssentialData];
}

@end
