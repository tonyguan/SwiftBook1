//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

func calculate(opr: String) -> (Int, Int) -> Int {
    
    //定义+函数
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    //定义-函数
    func sub(a: Int, b: Int) -> Int {
        return a - b
    }
    
    var result: (Int, Int) -> Int
    
    switch (opr) {
    case "+":
        result = add
    case "-":
        result = sub
    default:
        result = add
    }
    return result
}

let f1: (Int, Int) -> Int = calculate("+")
print("10 + 5 = \(f1(10, 5))")

let f2: (Int, Int) -> Int = calculate("-")
print("10 - 5 = \(f2(10, 5))")
