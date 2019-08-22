//
//  Friday_Device.m
//  Friday_Helper
//
//  Created by 岳腾飞 on 2019/8/22.
//  Copyright © 2019 Friday. All rights reserved.
//

#import "Friday_Device.h"
#import <sys/utsname.h>
#import <UIKit/UIKit.h>

@implementation Friday_Device
+(NSString *)machineName{
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}
+(Friday_DeviceType)deviceType{
    NSString *machineName = [self machineName];
    
    if ([machineName isEqualToString:@"iPhone3,1"] ||
        [machineName isEqualToString:@"iPhone3,2"] ||
        [machineName isEqualToString:@"iPhone3,3"] ) {
        
        return F_iPhone4;
    }else if ([machineName isEqualToString:@"iPhone4,1"]){
        return F_iPhone4S;
    }else if ([machineName isEqualToString:@"iPhone5,1"] ||
              [machineName isEqualToString:@"iPhone5,2"]){
        return F_iPhone5;
    }else if ([machineName isEqualToString:@"iPhone5,3"] ||
              [machineName isEqualToString:@"iPhone5,4"] ){
        return F_iPhone5c;
    }else if ([machineName isEqualToString:@"iPhone6,1"] ||
              [machineName isEqualToString:@"iPhone6,2"] ){
        return F_iPhone5s;
    }else if ([machineName isEqualToString:@"iPhone7,1"] ||
              [machineName isEqualToString:@"iPhone8,2"]){
        return F_iPhone6Plus;
    }else if ([machineName isEqualToString:@"iPhone7,2"]){
        return F_iPhone6;
    }else if ([machineName isEqualToString:@"iPhone8,1"]){
        return F_iPhone6s;
    }else if ([machineName isEqualToString:@"iPhone8,4"]){
        return F_iPhoneSE;
    }else if ([machineName isEqualToString:@"iPhone9,1"] ||
              [machineName isEqualToString:@"iPhone9,3"]){
        return F_iPhone7;
    }else if ([machineName isEqualToString:@"iPhone9,2"] ||
              [machineName isEqualToString:@"iPhone9,4"] ) {
        return F_iPhone7Plus;
    }else if ([machineName isEqualToString:@"iPhone10,1"] ||
              [machineName isEqualToString:@"iPhone10,4"] ){
        return F_iPhone8;
    }else if ([machineName isEqualToString:@"iPhone10,2"] ||
              [machineName isEqualToString:@"iPhone10,5"] ){
        return F_iPhone8Plus;
    }else if ([machineName isEqualToString:@"iPhone10,3"] ||
              [machineName isEqualToString:@"iPhone10,6"] ){
        return F_iPhoneX;
    }else if ([machineName isEqualToString:@"iPhone11,2"]){
        return F_iPhoneXS;
    }else if ([machineName isEqualToString:@"iPhone11,4"] ||
              [machineName isEqualToString:@"iPhone11,6"] ){
        return F_iPhoneXSMax;
    }else if ([machineName isEqualToString:@"iPhone11,8"]){
        return F_iPhoneXR;
    }else if ([machineName isEqualToString:@"i386"] ||
              [machineName isEqualToString:@"x86_64"]){
        return F_Simulator;
    }else if ([machineName isEqualToString:@"iPod1,1"]){
        return F_iPodTouch1G;
    }else if ([machineName isEqualToString:@"iPod2,1"]){
        return F_iPodTouch2G;
    }else if ([machineName isEqualToString:@"iPod3,1"]){
        return F_iPodTouch3G;
    }else if ([machineName isEqualToString:@"iPod4,1"]){
        return F_iPodTouch4G;
    }else if ([machineName isEqualToString:@"iPod5,1"]){
        return F_iPodTouch5G;
    }else{
        return F_OtherMachine;
    }
}
+(NSString *)systemVersion{
    return [[UIDevice currentDevice] systemVersion];
}
+(NSString *)buidVersion{
    return [[[NSBundle mainBundle] infoDictionary]objectForKey:@"CFBundleVersion"];
}
+(NSString *)versionVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}
@end
