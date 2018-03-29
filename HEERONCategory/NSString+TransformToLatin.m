//
//  NSString+TransformToLatin.m
//  TestNotify
//
//  Created by ZhangHl on 16/7/6.
//  Copyright © 2016年 Lansejuli. All rights reserved.
//

#import "NSString+TransformToLatin.h"

#define kAlphaNum @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

@implementation NSString (TransformToLatin)

+ (NSString *)transformToLatinWithChinese:(NSString *)chinese {
    // 先把非中文与中文用空格隔开
    NSMutableArray *chineseArr = [NSMutableArray array];
    for (int i = 0; i < chinese.length; i ++) {
        NSRange range = NSMakeRange(i, 1);
        NSString *c = [chinese substringWithRange:range];
        
        [chineseArr addObject:[NSString stringWithFormat:@"%@",c]];
    }
    
    NSString *doneStr = [chineseArr componentsJoinedByString:@" "];
    
    // 转拉丁文
    NSMutableString *muChinese = [NSMutableString stringWithString:doneStr];
    CFStringTransform((CFMutableStringRef)muChinese, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)muChinese, NULL, kCFStringTransformStripDiacritics, NO);
    
    // 特殊字符移除
    NSArray *excludingArr = [muChinese componentsSeparatedByString:@" "];
    NSMutableArray *excludedArr = [NSMutableArray array];
    
    for (NSString *ss in excludingArr) {
        NSCharacterSet *set = [[NSCharacterSet characterSetWithCharactersInString:kAlphaNum] invertedSet];
        NSArray *filteredArr = [ss componentsSeparatedByCharactersInSet:set];
        NSString *filtered = [filteredArr componentsJoinedByString:@""];
        if ([ss isEqualToString:filtered]) {
            [excludedArr addObject:ss];
        }
    }
    
    NSString *resultStr = [excludedArr componentsJoinedByString:@" "];
    
    return resultStr;
}

+ (NSString *)initialLatinWithChinese:(NSString *)chinese {
    NSString *latin = [self transformToLatinWithChinese:chinese];
    NSString *initialLatin = [self initialCharacterWithString:latin];
    return initialLatin;
}

//MARK:实例方法
- (NSString *)transformToLatin {
    return [NSString transformToLatinWithChinese:self];
}

- (NSString *)transformToLatinUppercase {
    return [[self transformToLatin] uppercaseString];
}

- (NSString *)initialLatin {
    NSString *latin = [NSString transformToLatinWithChinese:self];
    return [NSString initialCharacterWithString:latin];
}

- (NSString *)initialLatinUppercase {
    return [[self initialLatin] uppercaseString];
}

+ (NSString *)initialCharacterWithString:(NSString *)originalString {
    NSArray *singleArr = [originalString componentsSeparatedByString:@" "];
    NSMutableString *resultString = [NSMutableString string];
    for (NSString *single in singleArr) {
        if (single.length > 0) {
            NSString *initial = [single substringToIndex:1];
            [resultString appendString:initial];
        }
    }
    return resultString;
}

@end
