//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

extension Int {
    var errorMessage: String {
        var errorStr = ""
            switch (self) {
            case -7:
                errorStr = "没有数据。"
            case -6:
                errorStr = "日期没有输入。"
            case -5:
                errorStr = "内容没有输入。"
            case -4:
                errorStr = "ID没有输入。"
            case -3:
                errorStr = "据访问失败。"
            case -2:
                errorStr = "您的账号最多能插入10条数据。"
            case -1:
                errorStr = "用户不存在，请到http://51work6.com注册。"
            default:
                errorStr = ""
            }
            return errorStr
    }
}
let message = (-7).errorMessage
print("Error Code: -7 , Error Message: \(message)")


struct Account {
    var amount: Double = 0.0               	//账户金额
    var owner: String = ""                 	//账户名
}

extension Account {
    static var interestRate: Double {      //利率
        return 0.0668
    }
}

print(Account.interestRate)
