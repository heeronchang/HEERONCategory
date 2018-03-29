//
//  NSString+Color.h
//  BaoxiguanjiaFix
//
//  Created by Zhang Hailing on 2018/3/13.
//  Copyright © 2018年 Bao xiu guan jia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Color)

/**
 色值转换为UIColor
 
 @param hexColor 色值
 @return UIColor obj
 */
+ (UIColor *)colorFromHexColor:(NSString *)hexColor;

/**
 色值转换为UIColor

 @return UIColor obj
 */
- (UIColor *)hexColor2Color;

@end
