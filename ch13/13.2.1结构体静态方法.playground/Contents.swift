//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

struct Account {
    
    var owner: String = "Tony"                 //账户名
    static var interestRate: Double = 0.668    //利率
    
    static func interestBy(amount: Double) -> Double {
        return interestRate * amount
    }
    
    func messageWith(amount: Double) -> String {
        
        let interest = Account.interestBy(amount)
        return "\(self.owner) 的利息是\(interest)"
        
    }
}

//调用静态方法
print(Account.interestBy(10_000.00))

var myAccount = Account()
//调用实例方法
print(myAccount.messageWith(10_000.00))
