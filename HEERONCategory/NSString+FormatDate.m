//
//  NSString+FormatDate.m
//  OptimalCar
//
//  Created by ZhangHl on 15/9/18.
//  Copyright (c) 2015年 technology. All rights reserved.
//

#import "NSString+FormatDate.h"

@implementation NSString (FormatDate)

+ (NSString *)hourAndMinuteSinceDateString:(NSString *)dateString
{
    NSInteger integerValue = time(NULL) - dateString.integerValue;
    NSString *hour = [NSString stringWithFormat:@"%02ld", integerValue / 3600];
    NSString *minute = [NSString stringWithFormat:@"%2ld", (integerValue % 3600) / 60];
//    NSString *second = [NSString stringWithFormat:@"%2d", integerValue % 60];
    return [NSString stringWithFormat:@"%@时%@分", hour, minute];
}

+ (NSString *)hourMinuteSecondWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"HH-mm-ss" dateString:dateString];
}

+ (NSString *)yearAndMonthAndDayWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"yyyy-MM-dd" dateString:dateString];
}

+ (NSString *)yearAndMonthAndDayWithDateString_2:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"yyyy年MM月dd日" dateString:dateString];
}

+ (NSString *)yearAndMonthAndDayWithDateString_3:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"yyyy.MM.dd" dateString:dateString];
}

+ (NSString *)monthAndDayWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"MM月dd日" dateString:dateString];
}

+ (NSString *)monthAndDayWithDateString_2:(NSString *) dateString {
    return [NSString formatterDateWithFormatter:@"MM-dd" dateString:dateString];
}

+ (NSString *)hourAndMinuteWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"HH:mm" dateString:dateString];
}

+ (NSString *)hourAndMinuteSecondWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"HH:mm:ss" dateString:dateString];
}

+ (NSString *)hourWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"HH" dateString:dateString];
}

+ (NSString *)weekWithDateString:(NSString *)dateString {
    return [NSString formatterDateWithFormatter:@"EEEE" dateString:dateString];
}

+ (NSString *)formatterDateWithFormatter:(NSString *)formatterString dateString:(NSString *)dateString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = formatterString;
    NSTimeInterval time = [dateString doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSString *formatterDate = [formatter stringFromDate:date];
    return formatterDate;
}

@end
