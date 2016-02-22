//
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//
//



import Foundation

class Rectangle {
    
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width   = width
        self.height  = height
    }
    
    init(W width: Double,H height: Double) {
        self.width   = width
        self.height  = height
    }
    
    deinit {
        print("调用析构器...")
        self.width = 0.0
        self.height  = 0.0
        
    }
}

var rectc1: Rectangle? = Rectangle(width: 320, height: 480)
print("长方形:\(rectc1!.width) x \(rectc1!.height)")
rectc1 = nil

var rectc2: Rectangle? = Rectangle(W: 320, H: 480)
print("长方形:\(rectc2!.width) x \(rectc2!.height)")
rectc2 = nil
