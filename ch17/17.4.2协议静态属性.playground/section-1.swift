//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

protocol Account  {
    static var interestRate: Double {get}  //利率
    static func interestBy(amount: Double) -> Double
}

class ClassImp: Account {
    
    static var interestRate: Double  {
        return 0.0668
    }
    class func interestBy(amount: Double) -> Double {
        return ClassImp.interestRate * amount
    }
}

struct StructImp: Account {
    
    static var interestRate: Double = 0.0668
    static func interestBy(amount: Double) -> Double {
        return  StructImp.interestRate * amount
    }
}

enum EnumImp: Account {
    
    static var interestRate: Double = 0.0668
    static func interestBy(amount: Double) -> Double {
        return  EnumImp.interestRate * amount
    }
}
