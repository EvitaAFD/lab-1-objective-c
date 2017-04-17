//
//  NSString+String.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "NSString+String.h"

@implementation NSString (String)

-(NSArray *)toArray{
    return [self componentsSeparatedByString:@" "];
}

-(NSString *)reversedString {
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [self length];
    while(charIndex > 0) {
        charIndex--;
        NSRange subStringRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[self substringWithRange:subStringRange]];
    }
    NSLog(@"%@", reversedString);
    return reversedString;
}

@end
