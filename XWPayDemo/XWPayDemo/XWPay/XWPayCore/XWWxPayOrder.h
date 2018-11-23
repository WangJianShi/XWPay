//
//  XWWxPayOrder.h
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XWWxPayOrder : NSObject

@property (nonatomic, strong) NSString *partnerId;

@property (nonatomic, strong) NSString *prepayid;

@property (nonatomic, strong) NSString *nonceStr;

@property (nonatomic, strong) NSString *package;

@property (nonatomic, strong) NSString *sign;

@property (nonatomic, strong) NSString *appid;

@property (nonatomic, assign) int32_t timeStamp;

-(XWWxPayOrder *)creatOrderWithAppid:(NSString *)appid partnerId:(NSString *)partnerId prepayid:(NSString *)prepayid nonceStr:(NSString *)nonceStr timeStamp:(int32_t)timeStamp package:(NSString *)package sign:(NSString *)sign;


@end
