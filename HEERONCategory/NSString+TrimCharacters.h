//
//  NSString+TrimCharacters.h
//  UserClient
//
//  Created by ZhangHl on 16/4/12.
//  Copyright © 2016年 ZhangHl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TrimCharactersXX)

/**
 *  去除字符串两端的空白格
 *
 *  @return 返回两端没有空白格的字符串
 */
- (NSString *)trimWhitespaceXX;

/**
 *  去除字符串中所有空白格
 *
 *  @return 返回不包含空白格的字符串
 */
- (NSString *)trimAllWhitespace;

@end
