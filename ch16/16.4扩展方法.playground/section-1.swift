//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

extension Double {
    static var interestRate: Double = 0.0668 //利率
    func interestBy1() -> Double {
        return self * Double.interestRate
    }
    mutating func interestBy2() {
        self = self * Double.interestRate
    }
    static func interestBy3(amount: Double) -> Double {
        return interestRate * amount
    }
}

let interest1 = (10_000.00).interestBy1()
print("利息1: \(interest1)")

var interest2 = 10_000.00
interest2.interestBy2()
print("利息2: \(interest2)")

var interest3 = Double.interestBy3(10_000.00)
print("利息3: \(interest3)")
