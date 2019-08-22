//
//  Friday_Array.h
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friday_Array : NSObject

/**
 数组去重

 @param array 需要去重的数组
 @return 去重后的数组
 */
+(NSArray *)arrayDeduplication:(NSArray *)array;

/**
 数组转json字符串

 @param array 数组
 @return json字符串
 */
+(NSString *)arrayToJson:(NSArray *)array;

/**
 json字符串转数组

 @param jsonString json字符串
 @return 数组
 */
+(NSArray *)jsonStringToArray:(NSString *)jsonString;
@end

