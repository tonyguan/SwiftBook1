//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

//定义轮船协议
protocol Ship {
    //排水量
    var displacement: Double { get set }
}

//定义武器协议
protocol Weapon {
    //火炮门数
    var gunNumber: Int { get set }
}

//定义军舰类
class Warship: Ship, Weapon {
    //排水量
    var displacement  = 1000_000.00
    //火炮门数
    var gunNumber = 10
}

func showWarResource(resource: protocol<Ship, Weapon>) {
    print("Ship \(resource.displacement) - Weapon \(resource.gunNumber)")
}

let ship = Warship()
showWarResource(ship)
