//
//  NSString+Regex.m
//  UserClient
//
//  Created by ZhangHl on 16/5/16.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

// 判读手机号格式
+ (BOOL)isMobileNumber:(NSString *)mobileNum {
    NSString * ALL = @"^1[0-9]{10}$"; // 1月9号黄山迅驰张
    NSPredicate *regexAll = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",ALL];
    
    if ([regexAll evaluateWithObject:mobileNum]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isEmail:(NSString *)email{
    
    NSString * ALL = @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$";
    NSPredicate *regexAll = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",ALL];
    
    if ([regexAll evaluateWithObject:email]) {
        return YES;
    }
    return NO;
}

@end
