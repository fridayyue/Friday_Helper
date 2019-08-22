//
//  Friday_Array.m
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import "Friday_Array.h"
#import "Friday_Judge.h"

@implementation Friday_Array
+(NSArray *)arrayDeduplication:(NSArray *)array{
    NSSet *set = [NSSet setWithArray:array];
    return [set allObjects];
}
+(NSString *)arrayToJson:(NSArray *)array{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
+(NSArray *)jsonStringToArray:(NSString *)jsonString{
    if (![Friday_Judge judgeStringEmpty:jsonString]) {
        return @[];
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:jsonData
                                                   options:NSJSONReadingMutableContainers
                                                     error:&err];
    if (err) {
        return @[];
    }
    return arr;
}
@end
