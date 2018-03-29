//
//  NSString+FormatDate.h
//  OptimalCar
//
//  Created by ZhangHl on 15/9/18.
//  Copyright (c) 2015年 technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FormatDate)

/**
 *  获取年月日时分秒
 *
 *  @param dateString dateString description
 *
 *  @return 20-18-30   （八点18分30秒）
 */
+ (NSString *)hourMinuteSecondWithDateString:(NSString *)dateString;

/**
 *  根据时间戳获取年月日
 *
 *  @param dateString dateString description
 *
 *  @return  XX-XX-XX
 */
+ (NSString *)yearAndMonthAndDayWithDateString:(NSString *) dateString;

/**
 *  根据时间戳获取年月日
 *
 *  @param dateString dateString description
 *
 *  @return  XX年XX月XX日
 */
+ (NSString *)yearAndMonthAndDayWithDateString_2:(NSString *)dateString;

/**
 *  根据时间戳获取年月日
 *
 *  @param dateString dateString description
 *
 *  @return  XXXX.XX.XX
 */
+ (NSString *)yearAndMonthAndDayWithDateString_3:(NSString *)dateString;

/**
 *  根据时间戳获取月和日
 *
 *  @param dateString dateString description
 *
 *  @return XX月XX日
 */
+ (NSString *)monthAndDayWithDateString:(NSString *) dateString;

/**
 *  根据时间戳获取月和日
 *
 *  @param dateString dateString description
 *
 *  @return xx-xx
 */
+ (NSString *)monthAndDayWithDateString_2:(NSString *) dateString;

/**
 *  根据时间戳获取时和分
 *
 *  @param dateString dateString description
 *
 *  @return XX:XX
 */
+ (NSString *)hourAndMinuteWithDateString:(NSString *)dateString;

/**
 *  根据时间戳获取时分秒
 *
 *  @param dateString dateString description
 *
 *  @return XX:XX:xx
 */
+ (NSString *)hourAndMinuteSecondWithDateString:(NSString *)dateString;

/**
 *  获取时
 *
 *  @param dateString dateString description
 *
 *  @return 21
 */
+ (NSString *)hourWithDateString:(NSString *)dateString;

/**
 *  根据时间获取星期
 *
 *  @param dateString dateString description
 *
 *  @return 星期五
 */
+ (NSString *)weekWithDateString:(NSString *)dateString;

/**
 *  根据时间戳获取时分秒
 *
 *  @param dateString dateString description
 *
 *  @return return value description
 */
+ (NSString *)hourAndMinuteSinceDateString:(NSString *)dateString;

@end
