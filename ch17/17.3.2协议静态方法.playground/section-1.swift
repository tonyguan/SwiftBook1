//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

protocol Account  {
    static func interestBy(amount: Double) -> Double
}

class ClassImp: Account {
    class func interestBy(amount: Double) -> Double {
        return 0.0668 * amount
    }
}

struct StructImp: Account {
    static func interestBy(amount: Double) -> Double {
        return 0.0668 * amount
    }
}

enum EnumImp: Account {
    static func interestBy(amount: Double) -> Double {
        return 0.0668 * amount
    }
}
