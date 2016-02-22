//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

protocol Figure {
    func onDraw() //定义抽象绘制几何图形
}

class Rectangle: Figure {
    func onDraw() {
        print("绘制矩形...")
    }
}

class Circle: Figure {
    func onDraw() {
        print("绘制圆形...")
    }
}

let rect: Figure = Rectangle()
rect.onDraw()

let circle: Figure = Circle()
circle.onDraw()
