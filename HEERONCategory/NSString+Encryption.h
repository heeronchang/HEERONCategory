//
//  NSString+Encryption.h
//  UserClient
//
//  Created by ZhangHl on 16/4/22.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encryption)

/// md5加密
+ (NSString *)md5EncryptionWithString:(NSString *)string;

/// 十进制转十六进制
+ (NSString *)decimal2Hexadecimal:(NSString *)string;

/// 反转字符串 OC
+ (NSMutableString*)OCReverseString:(NSString *)string;

@end
