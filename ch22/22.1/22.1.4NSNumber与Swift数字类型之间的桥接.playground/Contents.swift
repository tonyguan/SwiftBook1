//
//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//



import Foundation

let number = 1_2345_6789

let formatter = NSNumberFormatter()

//十进制数字
formatter.numberStyle = .DecimalStyle
var stringNumber = formatter.stringFromNumber(number)
print("DecimalStyle : \(stringNumber!)")

let number1 = 0
//Int自动转换为NSNumber
let number2: NSNumber = number1

var number3 = 0
//NSNumber强制类型转换为Int
number3 = number2 as Int
