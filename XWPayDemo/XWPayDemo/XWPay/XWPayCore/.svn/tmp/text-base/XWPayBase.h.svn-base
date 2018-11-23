//
//  XWPayBase.h
//  StealTime
//
//  Created by 王剑石 on 2017/7/31.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XWPayChannel.h"
#import "XWPayConstant.h"
#import "XWPayResult.h"

@interface XWPayBase : NSObject

+(XWPayBase *)sharedInstance;

-(void)handleOpenURL:(NSURL *)url;

-(void)registerWxAPP:(NSString *)appid;

-(void)sendPay:(XWPayChannel *)channel callBack:(XWPayCompletedBlock )callBack;

@end
