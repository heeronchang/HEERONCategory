//
//  NSString+TrimCharacters.m
//  UserClient
//
//  Created by ZhangHl on 16/4/12.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import "NSString+TrimCharacters.h"

@implementation NSString (TrimCharacters)

- (NSString *)trimWhitespaceXX {
    if (!self) {
        return @"";
    }
//    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet]; 
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (NSString *)trimAllWhitespace {
    if (!self) {
        return @"";
    }
    NSString *result = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    return result;
}

@end
