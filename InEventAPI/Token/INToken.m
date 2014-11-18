//
//  INToken.m
//  InEvent
//
//  Created by Pedro Góes on 16/07/14.
//  Copyright (c) 2014 Est‚Äö√†√∂‚Äö√†¬¥dio Trilha. All rights reserved.
//

#import "INToken.h"

@interface INToken ()

@property (strong, nonatomic) NSMutableDictionary *values;

@end

@implementation INToken

#pragma mark - Initialization

- (id)init {
    // Load the data that is already stored
    [self loadEssentialData];
    // Return self
    return self;
}

#pragma mark - Public

- (void)setAllowedKeys:(NSArray *)keys {
    if (_values == nil) {
        // Alloc standard dictionary
        _values = [NSMutableDictionary dictionary];
    }
    
    // Add, merge and replace keys
    for (int i = 0; i < [keys count]; i++) {
        if ([_values objectForKey:[keys objectAtIndex:i]] == nil) {
            [_values setObject:@"[NSNull null]" forKey:[keys objectAtIndex:i]];
        }
    }
}

- (void)setObject:(id)anObject forKey:(id < NSCopying >)aKey {
    if ([_values objectForKey:aKey] != nil) {
        [_values setObject:anObject forKey:aKey];
    } else {
        [NSException raise:@"invalid key" format:@"key %@ is not available", aKey];
    }
    
    [self storeEssentialData];
}

- (id)objectForKey:(id)aKey {
    id object = [_values objectForKey:aKey];
    if (object != nil) {
        return ([object isEqual:@"[NSNull null]"]) ? nil : object;
    } else {
        [NSException raise:@"invalid key" format:@"key %@ is not available", aKey];
        return object;
    }
}

#pragma mark - Data

- (NSString *)essentialDataPath {
    return [[[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:NSStringFromClass([self class])] stringByAppendingPathExtension:@"bin"];
}

- (void)storeEssentialData {
    [_values writeToFile:[self essentialDataPath] atomically:YES];
}

- (void)loadEssentialData {
    _values = [NSMutableDictionary dictionaryWithContentsOfFile:[self essentialDataPath]];
    
    if (_values == nil) _values = [NSMutableDictionary dictionary];
}

- (void)resetData {
    NSArray *keys = [_values allKeys];
    for (int i = 0; i < [keys count]; i++) {
        [_values setObject:@"[NSNull null]" forKey:[keys objectAtIndex:i]];
    }
    
    [self storeEssentialData];
}

- (void)dealloc {
    [self storeEssentialData];
}

@end
