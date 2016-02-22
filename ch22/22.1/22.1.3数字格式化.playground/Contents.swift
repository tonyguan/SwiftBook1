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

//科学计数法
formatter.numberStyle = .ScientificStyle
stringNumber = formatter.stringFromNumber(number)
print("ScientificStyle : \(stringNumber!)")

//百分数
formatter.numberStyle = .PercentStyle
stringNumber = formatter.stringFromNumber(number)
print("PercentStyle : \(stringNumber!)")

//货币
formatter.numberStyle = .CurrencyStyle
stringNumber = formatter.stringFromNumber(number)
print("CurrencyStyle : \(stringNumber!)")

//大写数字
formatter.numberStyle = .SpellOutStyle
stringNumber = formatter.stringFromNumber(number)
print("SpellOutStyle : \(stringNumber!)")

//设置本地化标识
for localId in ["en_US", "fr_FR", "zh_CN"] {
    formatter.locale = NSLocale(localeIdentifier: localId)
    
    //货币
    formatter.numberStyle = .CurrencyStyle
    stringNumber = formatter.stringFromNumber(number)
    print("\(localId) : CurrencyStyle : \(stringNumber!)")
    
    //大写数字
    formatter.numberStyle = .SpellOutStyle
    stringNumber = formatter.stringFromNumber(number)
    print("\(localId) : SpellOutStyle : \(stringNumber!)")
}
