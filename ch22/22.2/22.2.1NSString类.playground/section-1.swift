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

var str1: NSString = "aBcDeFgHiJk"
var str2: NSString = "12345"
var res: NSString
var compareResult: NSComparisonResult
var subRange: NSRange

//字符个数
NSLog("字符串str1长度: %i", str1.length) //输出：11

//拷贝字符串到res
res = NSString(string: str1)
NSLog("拷贝: %@", res)        //输出：aBcDeFgHiJk

//拷贝字符串到str1尾部
str2 = str1.stringByAppendingString(str2 as String)
NSLog("连接字符串: %@", str2) //输出：aBcDeFgHiJk12345

//测试字符串相等
if str1.isEqualToString(res as String) {
    NSLog("str1 == res")
} else {
    NSLog("str1 != res")
}
//输出：str1 == res

//测试字符串 < > ==
compareResult = str1.compare(str2 as String)
switch compareResult {
case .OrderedAscending:
    NSLog("str1 < str2")
case .OrderedSame:
    NSLog("str1 == str2")
default:
    NSLog("str1 > str2")
}
//输出：str1 < str2

res = str1.uppercaseString
NSLog("大写字符串：%@", res)//输出：ABCDEFGHIJK

res = str1.lowercaseString
NSLog("小写字符串：%@", res) //输出：abcdefghijk
NSLog("原始字符串： %@", str1)//输出：aBcDeFgHiJk

//获得前三个数
res = str1.substringToIndex(3)
NSLog("字符串str1的前三个字符: %@", res)//输出：aBc
res = str1.substringFromIndex(4)
NSLog("截取字符串，从第索引4到尾部: %@", res)//输出：截取字符串，从第索引4到尾部: eFgHiJk

var temp: NSString = str1.substringFromIndex(3)
res = temp.substringToIndex(2)

NSLog("截取字符串，从第索引3到5: %@", res)//截取字符串，从第索引3到5: De

//字符串查找
subRange = str2.rangeOfString("34")
if subRange.location == NSNotFound {
    NSLog("字符串没有找到")
} else {
    NSLog("找到的字符串索引 %i 长度是 %i",
        subRange.location, subRange.length)
}
//输出：找到的字符串索引 13 长度是 2
