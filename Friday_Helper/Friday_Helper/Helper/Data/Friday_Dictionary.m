//
//  Friday_Dictionary.m
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import "Friday_Dictionary.h"
#import "Friday_Judge.h"

@implementation Friday_Dictionary
+(NSString *)dictionaryToJsonString:(NSDictionary *)dic{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
+(NSDictionary *)jsonToDictionary:(NSString *)jsonString{
    if (![Friday_Judge judgeStringEmpty:jsonString]) {
        return @{};
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        return @{};
    }
    return dic;
}
@end
