//
//  XWPayResult.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWPayResult.h"

@implementation XWPayResult

+(XWPayResult *)payResultMake:(NSString *)result  message:(NSString *)message  status:(XWPayStatusCode )statusCode{
    
    XWPayResult *payResult = [[XWPayResult alloc] init];
    
    payResult.result = result;
    
    payResult.message = message;
    
    payResult.status = statusCode;
    
    return payResult;
}

@end
