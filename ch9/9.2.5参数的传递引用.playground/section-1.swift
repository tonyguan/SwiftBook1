//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

func increment(inout value: Double, amount: Double = 1.0) {
    //省略
    value += amount
}

var value: Double = 10.0

increment(&value)
print(value)

increment(&value, amount: 100.0)
print(value)
