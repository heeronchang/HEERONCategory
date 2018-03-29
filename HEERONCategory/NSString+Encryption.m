//
//  NSString+Encryption.m
//  UserClient
//
//  Created by ZhangHl on 16/4/22.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import "NSString+Encryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Encryption)

+ (NSString *)md5EncryptionWithString:(NSString *)string {
    // 将传入OC字符串转换成C字符串
    const char *cStr = [string UTF8String];
    // 无符号字符数组 16位
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (uint32_t)strlen(cStr), digest);
    
    NSMutableString *encryptionString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH *2];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        // 将转换后的字符转换成16进制, 02表示不足两位前面补0,  例如 "a" -> "0a",  "3" -> "03"
        [encryptionString appendFormat:@"%02x",digest[i]];
    }
    return encryptionString;
}

+ (NSString *)decimal2Hexadecimal:(NSString *)string {
    int num = [string intValue];
    NSMutableString * result = [[NSMutableString alloc]init];
    while (num > 0) {
        int a = num % 16;
        char c;
        if (a > 9) {
            c = 'A' + (a - 10);
        }else{
            c = '0' + a;
        }
        NSString * reminder = [NSString stringWithFormat:@"%c",c];
        [result insertString:reminder atIndex:0];
        num = num / 16;
    }
    return [result lowercaseString];
}

+ (NSMutableString*)OCReverseString:(NSString *)string {
    NSUInteger length = [string length];
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:length];
    
    for(long i=length-1; i>=0; i--) {
        unichar c = [string characterAtIndex:i];
        [array addObject:[NSString stringWithFormat:@"%c",c]];
    }
    
    
    NSMutableString *str = [NSMutableString stringWithCapacity:length];
    for(int i=0; i<=length-1; i++) {
        [str appendString:array[i]];
    }
    return str;
}

@end
