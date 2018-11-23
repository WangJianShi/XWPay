//
//  XWPayConstant.h
//  StealTime
//
//  Created by 王剑石 on 2017/7/31.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#ifndef XWPayConstant_h
#define XWPayConstant_h

@class XWPayResult;
/**
 支付状态码
 
 - PaySuccess:           支付成功
 - PayProcessing:        正在处理
 - PayErrCodeUserCancel: 用户取消支付
 - PayErrSentFail:       发送失败
 - PayErrAuthDeny:       授权失败
 - PayErrPayFail:        支付失败
 - PayErrWxUnsupport:    微信不支持
 - PayErrWxUnInstall:    微信未安装
 - PayErrNetWorkFail:    网络错误
 - PayErrSDKNotFound:    SDK没有导入
 - PayErrUnKnown:        未知错误
 */


typedef enum : NSUInteger {
    
    PaySuccess,
    PayProcessing,
    PayErrCodeUserCancel,
    PayErrSentFail,
    PayErrAuthDeny,
    PayErrPayFail,
    PayErrWxUnsupport,
    PayErrWxUnInstall,
    PayErrNetWorkFail,
    PayErrSDKNotFound,
    PayErrUnKnown,
    
} XWPayStatusCode;



typedef void (^XWPayCompletedBlock) (XWPayResult *) ;


#endif /* XWPayConstant_h */
