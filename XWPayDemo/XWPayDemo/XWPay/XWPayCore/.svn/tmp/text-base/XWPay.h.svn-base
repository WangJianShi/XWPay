//
//  XWPay.h
//  StealTime
//
//  Created by 王剑石 on 2017/8/25.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XWPayBase.h"

@interface XWPay : NSObject

+(void)registerWxAPP:(NSString *)appid;

+(void)handleOpenURL:(NSURL *)url;

+(void)createPayment:(XWPayChannel *)channel callBack:(XWPayCompletedBlock)callback;

@end
