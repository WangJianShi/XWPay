//
//  XWPayResult.h
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XWPayConstant.h"

@interface XWPayResult : NSObject

@property (nonatomic, strong) NSString *message;

@property (nonatomic, strong) NSString *result;

@property (nonatomic, assign) XWPayStatusCode status;

+(XWPayResult *)payResultMake:(NSString *)result message:(NSString *)message status:(XWPayStatusCode )statusCode;

@end
