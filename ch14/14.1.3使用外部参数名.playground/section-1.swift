//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


//////////////// 示例1 ///////////////////////
class RectangleA {
    var width: Double
    var height: Double
    
    init(W width: Double, H height: Double) {
        self.width   = width
        self.height  = height
    }
}

var recta = RectangleA(W: 320, H: 480)
print("长方形A:\(recta.width) x \(recta.height)")

//////////////// 示例2 ///////////////////////

class RectangleB {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width   = width
        self.height  = height
    }
}

var rectb = RectangleB(width: 320, height: 480)
print("长方形B:\(rectb.width) x \(rectb.height)")

//////////////// 示例3 ///////////////////////
struct RectangleC {
    var width: Double = 0.0
    var height: Double = 0.0
}

var rectc = RectangleC(width: 320, height: 480)
print("长方形C:\(rectc.width) x \(rectc.height)")
