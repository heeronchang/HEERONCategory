//
//  NSString+TransformToLatin.h
//  TestNotify
//
//  Created by ZhangHl on 16/7/6.
//  Copyright © 2016年 Lansejuli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TransformToLatin)

/**
 *  中文转拼音
 *
 *  @param chinese chinese description
 *
 *  @return return value description
 */
+ (NSString *)transformToLatinWithChinese:(NSString *)chinese;

/**
 *  中文转拼音，截取首字母
 *
 *  @param chinese chinese description
 *
 *  @return return value description
 */
+ (NSString *)initialLatinWithChinese:(NSString *)chinese;

//MARK:实例方法
/**
 *  中文转拼音
 *
 *  @return 获取汉语拼音
 */
- (NSString *)transformToLatin;

/**
 *  中文转拼音
 *
 *  @return 获取汉语拼音大写
 */
- (NSString *)transformToLatinUppercase;

/**
 *  中文转拼音，截取首字母
 *
 *  @return 获取汉语拼音首字母
 */
- (NSString *)initialLatin;

/**
 *  中文转拼音，截取首字母(大写)
 *
 *  @return 获取汉语拼音首字母大写
 */
- (NSString *)initialLatinUppercase;

@end
