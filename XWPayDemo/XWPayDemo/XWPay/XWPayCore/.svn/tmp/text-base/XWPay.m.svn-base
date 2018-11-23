//
//  XWPay.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/25.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWPay.h"
#import "XWAliPayService.h"
#import "XWWxPayService.h"


@implementation XWPay

+(void)createPayment:(XWPayChannel *)channel callBack:(XWPayCompletedBlock)callback{
    
    
    switch (channel.payType) {
        case aliPay:
        {
            [[XWAliPayService sharedInstance] sendPay:channel callBack:callback];
            
        }
            break;
        case weiXin:
        {
            [[XWWxPayService sharedInstance] sendPay:channel callBack:callback];
            
        }
            break;
            
        default:
            break;
    }
}


+(void)handleOpenURL:(NSURL *)url{
    
    [[XWAliPayService sharedInstance] handleOpenURL:url];
    
    [[XWWxPayService sharedInstance] handleOpenURL:url];
}

+(void)registerWxAPP:(NSString *)appid{
    
    [[XWWxPayService sharedInstance] registerWxAPP:appid];
}


@end
