//
//  NSString+URLEncoding.m
//  InEvent
//
//  Created by Pedro Góes on 04/04/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

- (NSString *)stringByEncodingURLWithEncoding:(NSStringEncoding)encoding {
    
    /*
     Code acquired from Zaph at http://stackoverflow.com/questions/8086584/objective-c-url-encoding
     */
    
	return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                               (CFStringRef)self,
                                                               NULL,
                                                               (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                               CFStringConvertNSStringEncodingToEncoding(encoding)));
}

@end
