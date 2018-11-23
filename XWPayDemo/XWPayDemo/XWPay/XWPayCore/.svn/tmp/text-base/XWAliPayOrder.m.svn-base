//
//  XWAliPayOrder.m
//  StealTime
//
//  Created by 王剑石 on 2017/8/21.
//  Copyright © 2017年 wangjianshi. All rights reserved.
//

#import "XWAliPayOrder.h"

@implementation XWAliPayOrder

-(XWAliPayOrder *)creatOrderWithPartner:(NSString *)partner seller_id:(NSString *)seller_id out_trade_no:(NSString *)out_trade_no subject:(NSString *)subject body:(NSString *)body total_fee:(NSString *)total_fee notify_url:(NSString *)notify_url sign:(NSString *)sign appScheme:(NSString *)appScheme{
    
    XWAliPayOrder *aliOrder = [[XWAliPayOrder alloc] init];
    
    aliOrder.partner = partner;
    
    aliOrder.seller_id = seller_id;
    
    aliOrder.out_trade_no = out_trade_no;
    
    aliOrder.subject = subject;
    
    aliOrder.body = body;
    
    aliOrder.total_fee = total_fee;
    
    aliOrder.notify_url = notify_url;
    
    aliOrder.sign = sign;
    
    aliOrder.appScheme = appScheme;
    
    aliOrder.service = @"mobile.securitypay.pay";
    
    aliOrder._input_charset = @"utf-8";
    
    aliOrder.sign_type = @"RSA";
    
    return aliOrder;
}

-(XWAliPayOrder *)creatOrderWithOrderString:(NSString *)orderStr{
    
    XWAliPayOrder *aliOrder = [[XWAliPayOrder alloc] init];

    aliOrder.orderString = orderStr;
    
    return aliOrder;

}


-(NSString *)orderString{
    
    if (_orderString == nil) {
        
        NSMutableString *order = [NSMutableString  stringWithFormat:@"partner=%@&seller_id=%@&out_trade_no=%@&subject=%@&body=%@&total_fee=%@&notify_url=%@&service=%@&payment_type=%@&_input_charset=%@&sign=%@&sign_type=%@",self.partner,self.seller_id,self.out_trade_no,self.subject,self.body,self.total_fee,self.notify_url,self.service,self.payment_type,self._input_charset,self.sign,self.sign_type];
        
        if (self.it_b_pay != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&it_b_pay=%@",self.it_b_pay]];
        }
        if (self.app_id != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&app_id=%@",self.app_id]];
        }

        if (self.appenv != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&appenv=%@",self.appenv]];
        }

        if (self.goods_type != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&goods_type=%@",self.goods_type]];
        }

        if (self.rn_check != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&rn_check=%@",self.rn_check]];
        }

        if (self.extern_token != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&extern_token=%@",self.extern_token]];
        }
        if (self.out_context != nil) {
            
            [order appendString:[NSString stringWithFormat:@"&out_context=%@",self.out_context]];
        }

        return order;
    }
    
    return _orderString;
}

@end
