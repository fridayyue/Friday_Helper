//
//  Friday_Device.h
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,Friday_DeviceType){
    F_iPhone4,
    F_iPhone4S,
    F_iPhone5,
    F_iPhone5s,
    F_iPhone5c,
    F_iPhoneSE,
    F_iPhone6,
    F_iPhone6Plus,
    F_iPhone6s,
    F_iPhone7,
    F_iPhone7Plus,
    F_iPhone8,
    F_iPhone8Plus,
    F_iPhoneX,
    F_iPhoneXS,
    F_iPhoneXSMax,
    F_iPhoneXR,
    F_Simulator,
    F_iPodTouch1G,
    F_iPodTouch2G,
    F_iPodTouch3G,
    F_iPodTouch4G,
    F_iPodTouch5G,
    F_OtherMachine
};

@interface Friday_Device : NSObject

/**
 获取机器的类型

 @return 机器类型名字
 */
+(NSString *)machineName;

/**
 获取设备类型

 @return 返回手机类型
 */
+(Friday_DeviceType)deviceType;

/**
 当前系统版本 例如 8.0 8.0

 @return 系统版本
 */
+(NSString *)systemVersion;

/**
 获取app的build号 eg.100 123

 @return build号
 */
+(NSString *)buidVersion;

/**
 获取app的version号 eg：1.0.0 1.2.3

 @return version号
 */
+(NSString *)versionVersion;
@end

