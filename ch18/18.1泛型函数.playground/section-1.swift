//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


func isEqualsInt(a: Int, b: Int) -> Bool {
    return (a == b)
}

func isEqualsDouble(a: Double, b: Double) -> Bool {
    return (a == b)
}

func isEqualsString(a: String, b: String) -> Bool {
    return (a == b)
}

func isEquals<T:Comparable>(a: T, b: T) -> Bool {
    return (a == b)
}

let n1 = 200
let n2 = 100

print(isEquals(n1, b: n2))

let s1 = "ABC1"
let s2 = "ABC1"

print(isEquals(s1, b: s2))
