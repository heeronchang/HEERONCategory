//
//  NSString+Color.m
//  BaoxiguanjiaFix
//
//  Created by Zhang Hailing on 2018/3/13.
//  Copyright © 2018年 Bao xiu guan jia. All rights reserved.
//

#import "NSString+Color.h"

@implementation NSString (Color)

+ (UIColor *)colorFromHexColor:(NSString *)hexColor {
    return [hexColor hexColor2Color];
}

- (UIColor *)hexColor2Color {
    NSString *hexColorString = self;
    
    if ([hexColorString hasPrefix:@"#"]) {
        hexColorString = [hexColorString substringFromIndex:1];
    }
    
    if (hexColorString.length != 6) {
        return  nil;
    }
    
    NSRange range = NSMakeRange(0, 2);
    NSString *redStr = [hexColorString substringWithRange:range];
    range.location = 2;
    NSString *greenStr = [hexColorString substringWithRange:range];
    range.location = 4;
    NSString *blueStr = [hexColorString substringWithRange:range];
    
    unsigned int red, green, blue;
    [[NSScanner scannerWithString:redStr] scanHexInt:&red];
    [[NSScanner scannerWithString:greenStr] scanHexInt:&green];
    [[NSScanner scannerWithString:blueStr] scanHexInt:&blue];
    
    return [UIColor colorWithRed:red / 255.0f  green:green / 255.0f blue:blue / 255.0f alpha:1];
}

@end
