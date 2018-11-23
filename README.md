# XWPay
支付宝，微信，银联支付高级封装


            NSString *orderStr = [[json xw_dictionaryForKey:@"result"] xw_stringForKey:@"alipay"];
            XWAliPayOrder *aliOrder = [[XWAliPayOrder alloc] creatOrderWithOrderString:orderStr];
            aliOrder.appScheme = AlipayScheme;
            payChannel = [XWPayChannel aliPay:aliOrder];
            
            [XWPay createPayment:payChannel callBack:^(XWPayResult *result){
               [XWProgressHUD showMessage:result.message];
               if (result.status == PaySuccess) {
                  if (callback) {
                    callback(YES);
                   }
                
               }else{
                 if (callback) {
                    callback(NO);
                 }
               }
            }];
