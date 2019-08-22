//
//  Friday_Dictionary.h
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Friday_Dictionary : NSObject

/**
 字典转json字符串

 @param dic 字典
 @return json字符串
 */
+(NSString *)dictionaryToJsonString:(NSDictionary *)dic;

/**
 json字符串转字典

 @param jsonString json字符串
 @return 字典
 */
+(NSDictionary *)jsonToDictionary:(NSString *)jsonString;
@end

