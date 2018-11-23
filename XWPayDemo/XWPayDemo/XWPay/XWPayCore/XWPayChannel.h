//
//  XWPayChannel.h
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XWAliPayOrder.h"
#import "XWWxPayOrder.h"
#import "XWUpPayOrder.h"

typedef enum : NSUInteger {
    
    weiXin,
    aliPay,
    upPay,
    
} XWPayType;

@interface XWPayChannel : NSObject

@property (nonatomic, strong) XWAliPayOrder *aliPayOrder;

@property (nonatomic, strong) XWWxPayOrder *wxPayOrder;

@property (nonatomic, strong) XWUpPayOrder *upPayOrder;

@property (nonatomic, assign) XWPayType payType;

+(XWPayChannel *)upPay:(XWUpPayOrder *)upOrder;

+(XWPayChannel *)aliPay:(XWAliPayOrder *)aliOrder;

+(XWPayChannel *)weiXin:(XWWxPayOrder *)wxOrder;


@end
