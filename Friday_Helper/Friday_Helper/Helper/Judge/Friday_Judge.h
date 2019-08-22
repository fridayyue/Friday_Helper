//
//  Friday_Judge.h
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friday_Judge : NSObject

/**
 判断字符串是否为空字符串

 @param judgeString 判断的字符串
 @return YES:空字符串或者不为字符串 NO:为非空字符串
 */
+(BOOL)judgeStringEmpty:(NSString *)judgeString;

@end

