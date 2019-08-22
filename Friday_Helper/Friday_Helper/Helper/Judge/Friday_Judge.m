//
//  Friday_Judge.m
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import "Friday_Judge.h"

@implementation Friday_Judge
+(BOOL)judgeStringEmpty:(NSString *)judgeString{
    if (!judgeString) {
        return YES;
    }
    if ([judgeString isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (!judgeString.length) {
        return YES;
    }
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    /**< 从字符串中过滤掉首尾的空格和换行, 得到一个新的字符串 */
    NSString *trimmedStr = [judgeString stringByTrimmingCharactersInSet:set];
    if (!trimmedStr.length) {
        return YES;
    }
    return NO;
}
@end
