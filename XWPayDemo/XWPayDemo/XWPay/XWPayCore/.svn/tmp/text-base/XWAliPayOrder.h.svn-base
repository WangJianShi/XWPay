//
//  XWAliPayOrder.h
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XWAliPayOrder : NSObject

/// 商家id（以2088开头的16位纯数字组成）
@property (nonatomic, strong) NSString *partner;
/// 支付宝账号
@property (nonatomic, strong) NSString *seller_id;
/// 订单号
@property (nonatomic, strong) NSString *out_trade_no;
/// 商品名称（该参数最长为128个汉字）
@property (nonatomic, strong) NSString *subject;
/// 商品详情
@property (nonatomic, strong) NSString *body;
/// 总金额（精确到小数点后两位）
@property (nonatomic, strong) NSString *total_fee;
/// 服务器异步通知页面路径（支付宝服务器主动通知商户网站里指定的页面http路径）
@property (nonatomic, strong) NSString *notify_url;
/// 接口名称（固定值：mobile.securitypay.pay）
@property (nonatomic, strong) NSString *service;
/// 支付类型（默认值为：1（商品购买））
@property (nonatomic, strong) NSString *payment_type;
/// 参数编码字符集（固定值：utf-8）
@property (nonatomic, strong) NSString * _input_charset;
/// 签名
@property (nonatomic, strong) NSString *sign;
/// 签名方式（目前仅支持RSA）
@property (nonatomic, strong) NSString *sign_type;
/// URL types 下的 URL Scheme
@property (nonatomic, strong) NSString *appScheme;
// ------------------ 以下字段可以为空 ---------------------
/// 未付款交易的超时时间
@property (nonatomic, strong) NSString *it_b_pay;
/// appid
@property (nonatomic, strong) NSString *app_id;
/// 客户端来源
@property (nonatomic, strong) NSString *appenv;
/// 商品类型
@property (nonatomic, strong) NSString *goods_type;
/// 是否发起实名校验
@property (nonatomic, strong) NSString *rn_check;
/// 授权令牌
@property (nonatomic, strong) NSString *extern_token;
/// 商户业务扩展参数
@property (nonatomic, strong) NSString *out_context;


//-----------------------------以下字段是已经处理好的支付订单字符串-------------------／／

@property (nonatomic, strong) NSString *orderString;


-(XWAliPayOrder *)creatOrderWithPartner:(NSString *)partner seller_id:(NSString *)seller_id out_trade_no:(NSString *)out_trade_no subject:(NSString *)subject body:(NSString *)body total_fee:(NSString *)total_fee notify_url:(NSString *)notify_url sign:(NSString *)sign appScheme:(NSString *)appScheme;

-(XWAliPayOrder *)creatOrderWithOrderString:(NSString *)orderStr;

@end
