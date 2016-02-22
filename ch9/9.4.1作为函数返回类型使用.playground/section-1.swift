//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

//定义计算长方形面积函数
func rectangleArea(width: Double, height: Double) -> Double {
    let area = width * height
    return area
}

//定义计算三角形面积函数
func triangleArea(bottom: Double, height: Double) -> Double {
    let area = 0.5 * bottom * height
    return area
}


func getArea(type: String) -> (Double, Double) -> Double {
    
    var returnFunction: (Double, Double) -> Double
    
    switch (type) {
    case "rect":   //rect 表示长方形
        returnFunction = rectangleArea
    case "tria":  //tria 表示三角形
        returnFunction = triangleArea
    default:
        returnFunction = rectangleArea
    }
    
    return returnFunction
}

//获得计算三角形面积函数
var area: (Double, Double) -> Double = getArea("tria")
print("底10 高13，三角形面积：\(area(10, 15))")

//获得计算长方形面积函数
area = getArea("rect")
print("宽10 高15，计算长方形面积：\(area(10, 15))")
