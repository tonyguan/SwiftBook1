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

var str = "Objective-C and Swift"
print("原始字符串：\(str)")

//插入字符
str.insert(".", atIndex: str.endIndex)
print("插入.字符后：\(str)")

str.removeAtIndex(str.endIndex.predecessor())
print("删除.字符后：\(str)")

var startIndex = str.startIndex
var endIndex = startIndex.advancedBy(9)
var range = startIndex...endIndex
//删除范围
str.removeRange(range)
print("删除范围后：\(str)")

startIndex = str.startIndex
endIndex = startIndex.advancedBy(0)
range = startIndex...endIndex
//替换范围
str.replaceRange(range, with: "C++")
print("替换范围后：\(str)")
