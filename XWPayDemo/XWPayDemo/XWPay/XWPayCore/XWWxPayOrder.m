//
//  XWWxPayOrder.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWWxPayOrder.h"

@implementation XWWxPayOrder

-(XWWxPayOrder *)creatOrderWithAppid:(NSString *)appid partnerId:(NSString *)partnerId prepayid:(NSString *)prepayid nonceStr:(NSString *)nonceStr timeStamp:(int32_t)timeStamp package:(NSString *)package sign:(NSString *)sign{
    
    XWWxPayOrder *order = [[XWWxPayOrder alloc] init];
    
    order.appid = appid;
    
    order.partnerId = partnerId;
    
    order.prepayid = prepayid;
    
    order.nonceStr = nonceStr;
    
    order.timeStamp = timeStamp;
    
    order.package = package;
    
    order.sign = sign;
    
    return order;
}

@end
