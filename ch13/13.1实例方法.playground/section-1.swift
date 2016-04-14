//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


class Account {
    
    var amount: Double = 10_000.00         // 账户金额
    var owner: String = "Tony"             //账户名
    
    func interestWithRate(rate: Double) -> Double {
        return rate * amount
    }
}

var myAccount = Account()
//调用实例方法
print(myAccount.interestWithRate(0.088))
