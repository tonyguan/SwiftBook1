//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

class Account {
    
    var owner: String = "Tony"     //账户名
    
    //不能换成static
    class func interestBy(amount: Double) -> Double {
        return 0.08886 * amount
    }
}

class TermAccount: Account {//定期账户
    
    //可以换成static
    override class func interestBy(amount: Double) -> Double {
        return 0.09 * amount
    }
}

//调用类型方法
print(Account.interestBy(10_000.00 ))
print(TermAccount.interestBy(10_000.00 ))
