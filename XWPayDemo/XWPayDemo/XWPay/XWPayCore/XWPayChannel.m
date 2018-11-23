//
//  XWPayChannel.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWPayChannel.h"

@implementation XWPayChannel

+(XWPayChannel *)weiXin:(XWWxPayOrder *)wxOrder{
    
    XWPayChannel *payChannel = [[XWPayChannel alloc] init];
    
    payChannel.wxPayOrder = wxOrder;
    
    return payChannel;
}

+(XWPayChannel *)aliPay:(XWAliPayOrder *)aliOrder{
    
    XWPayChannel *payChannel = [[XWPayChannel alloc] init];
    
    payChannel.aliPayOrder = aliOrder;
    
    return payChannel;

}

+(XWPayChannel *)upPay:(XWUpPayOrder *)upOrder{
    
    XWPayChannel *payChannel = [[XWPayChannel alloc] init];
    
    payChannel.upPayOrder = upOrder;
    
    return payChannel;
}

-(void)setAliPayOrder:(XWAliPayOrder *)aliPayOrder{
    
    _aliPayOrder = aliPayOrder;
    
    self.payType = aliPay;
}

-(void)setWxPayOrder:(XWWxPayOrder *)wxPayOrder{
    
    _wxPayOrder = wxPayOrder;
    
    self.payType = weiXin;
}

-(void)setUpPayOrder:(XWUpPayOrder *)upPayOrder{
    
    _upPayOrder = upPayOrder;
    
    self.payType = upPay;
}

@end
