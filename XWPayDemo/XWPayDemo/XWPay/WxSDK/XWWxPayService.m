//
//  XWWxPayService.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWWxPayService.h"
#import "WXApi.h"

@interface XWWxPayService ()<WXApiDelegate>

@property (nonatomic, copy) XWPayCompletedBlock payCallBack;

@end

@implementation XWWxPayService


static XWPayBase *payWxBase = nil;

+(XWPayBase *)sharedInstance {
    if (!payWxBase){
        payWxBase = [[self allocWithZone:NULL] init];
    }
    return payWxBase;
}

-(void)onReq:(BaseReq *)req{
    
    
}

-(void)onResp:(BaseResp *)resp{
    
    if ([resp isKindOfClass:[PayResp class]]) {
        
        [self payResponseParse:(PayResp *)resp];
    }
}

-(void)handleOpenURL:(NSURL *)url{
    
    if ([url.host isEqualToString:@"pay"]) {
        
        [WXApi handleOpenURL:url delegate:self];
    }
}

-(void)registerWxAPP:(NSString *)appid{
    
    [WXApi registerApp:appid];
}


-(void)sendPay:(XWPayChannel *)channel callBack:(XWPayCompletedBlock)callBack{
    
    self.payCallBack = callBack;
    
    if (channel.payType == weiXin) {
        
        if (![WXApi isWXAppInstalled]) {
            
            self.payCallBack([XWPayResult payResultMake:nil message:@"未安装微信" status:PayErrWxUnInstall]);
            
            return;
        }
        
        PayReq *req = [[PayReq alloc] init];
        
        req.partnerId = channel.wxPayOrder.partnerId;
        
        req.prepayId = channel.wxPayOrder.prepayid;
        
        req.nonceStr = channel.wxPayOrder.nonceStr;
        
        req.timeStamp = channel.wxPayOrder.timeStamp;
        
        req.package = channel.wxPayOrder.package;
        
        req.sign = channel.wxPayOrder.sign;
        
        [WXApi sendReq:req];
    }
    
}

-(void)payResponseParse:(PayResp *)payResp{
    
    XWPayResult *result = [[XWPayResult alloc] init];
    
    switch (payResp.errCode) {
    case WXSuccess:
            
            result = [XWPayResult payResultMake:payResp.returnKey message:@"支付成功" status:PaySuccess];
            break;
    case WXErrCodeUserCancel:
            result = [XWPayResult payResultMake:nil message:@"取消支付" status:PayErrCodeUserCancel];
            break;
    case WXErrCodeSentFail:
            result = [XWPayResult payResultMake:nil message:@"发送失败" status:PayErrSentFail];
            break;
    case WXErrCodeAuthDeny:
            result = [XWPayResult payResultMake:nil message:@"授权失败" status:PayErrAuthDeny];
            break;
    case WXErrCodeUnsupport:
            result = [XWPayResult payResultMake:nil message:@"微信不支持" status:PayErrWxUnsupport];
            break;
    default:
            result = [XWPayResult payResultMake:nil message:@"未知错误" status:PayErrUnKnown];
            break;
    }
   
    if (self.payCallBack) {
        
        self.payCallBack(result);
    }

    
}



@end
