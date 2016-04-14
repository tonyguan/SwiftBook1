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

func getAreaByFunc(funcName: (Double, Double) -> Double, a: Double, b: Double) -> Double {
    let area = funcName(a, b)
    return area
}

//获得计算三角形面积函数
var result: Double = getAreaByFunc(triangleArea, a: 10, b: 15)
print("底10 高15，三角形面积：\(result)")

//获得计算长方形面积函数
result = getAreaByFunc(rectangleArea, a: 10, b: 15)
print("宽10 高15，计算长方形面积：\(result)")

