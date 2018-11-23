//
//  XWAliPayService.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWAliPayService.h"
#import <AlipaySDK/AlipaySDK.h>

@interface XWAliPayService ()

@property (nonatomic, copy) XWPayCompletedBlock payCallBack;


@end

@implementation XWAliPayService

static XWPayBase *payAliBase = nil;

+(XWPayBase *)sharedInstance {
    if (!payAliBase){
        payAliBase = [[self allocWithZone:NULL] init];
    }
    return payAliBase;
}

-(void)sendPay:(XWPayChannel *)channel callBack:(XWPayCompletedBlock)callBack{
    
    self.payCallBack = callBack;
    
    if (channel.payType == aliPay && channel.aliPayOrder != nil) {
        
        [[AlipaySDK defaultService] payOrder:channel.aliPayOrder.orderString fromScheme:channel.aliPayOrder.appScheme callback:^(NSDictionary *dict){
            
            XWPayResult *payResult = [self aliPayResultHandle:dict];
            
            if (self.payCallBack) {
                
                self.payCallBack(payResult);
            }
            
        }];
    }
    
}

-(void)handleOpenURL:(NSURL *)url{
    
    if ([url.host isEqualToString:@"safepay"]) {
        
        [AlipaySDK.defaultService processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *dict){
            XWPayResult *payResult = [self aliPayResultHandle:dict];
            
            if (self.payCallBack) {
                
                self.payCallBack(payResult);
            }

            
        }];

    }
}

-(XWPayResult *)aliPayResultHandle:(NSDictionary *)resultDic{
    
    XWPayResult *result = [[XWPayResult alloc] init];

    switch ([resultDic[@"resultStatus"] integerValue]) {
    case 9000:
        result = [XWPayResult payResultMake:resultDic[@"result"] message:@"支付成功" status:PaySuccess];
        break;
    case 8000:
        result = [XWPayResult payResultMake:nil message:@"正在处理" status:PayProcessing];
        break;
    case 4000:
        result = [XWPayResult payResultMake:nil message:@"支付失败" status:PayErrPayFail];
        break;
    case 6001:
        result = [XWPayResult payResultMake:nil message:@"取消支付" status:PayErrCodeUserCancel];
        break;
    case 6002:
        result = [XWPayResult payResultMake:nil message:@"网络错误" status:PayErrNetWorkFail];
        break;
    default:
        result = [XWPayResult payResultMake:nil message:@"未知错误" status:PayErrUnKnown];
    }
    return result;

}

@end
