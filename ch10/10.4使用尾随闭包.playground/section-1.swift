//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

func calculate(opr: String, funN: (Int, Int) -> Int) {
    
    switch (opr) {
    case "+":
        print("10 + 5 = \(funN(10, 5))")
    default:
        print("10 - 5 = \(funN(10, 5))")
    }
}

calculate("+", funN: { (a: Int, b: Int) -> Int in return a + b })
calculate("+") {
    (a: Int, b: Int) -> Int in return a + b
}
calculate("+") {
    $0 + $1
}

calculate("-") {
    (a: Int, b: Int) -> Int in
    return a - b
}

calculate("-") {
    $0 - $1
}
