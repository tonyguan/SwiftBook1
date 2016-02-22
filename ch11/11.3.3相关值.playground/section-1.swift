//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


enum Figure {
    case Rectangle(Int, Int)
    case Circle(Int)
}

func printFigure(figure: Figure) {
    
    switch figure {
    case .Rectangle(let width, let height):
    //case let .Rectangle(width, height):
        print("矩形的宽:\(width) 高:\(height)")
    case .Circle(let radius):
        print("圆形的半径：\(radius)")
    }
    
}

var figure = Figure.Rectangle(1024, 768)
printFigure(figure)

figure = .Circle(600)
printFigure(figure)
