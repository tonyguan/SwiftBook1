//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

class Account {
    
    var amount: Double = 0.0               // 账户金额
    var owner: String = ""                 //账户名
    
    var interestRate: Double = 0.0668       //利率
    
    //class不能换成static
    class var staticProp: Double {
        return 0.0668 * 1_000_000
    }
    
    var instanceProp: Double {
        return self.interestRate * self.amount
    }
}

class TermAccount: Account {
    
    //class换成static
    override class var staticProp: Double {
        return 0.0700 * 1_000_000
    }
}

//访问类型属性
print(Account.staticProp)
print(TermAccount.staticProp)
