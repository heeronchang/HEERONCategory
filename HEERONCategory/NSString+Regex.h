//
//  NSString+Regex.h
//  UserClient
//
//  Created by ZhangHl on 16/5/16.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regex)

/**
 *  判断手机号格式
 *
 *  @param mobileNum mobileNum description
 *
 *  @return return value description
 */
+ (BOOL)isMobileNumber:(NSString *)mobileNum;
+ (BOOL)isEmail:(NSString *)email;
@end
