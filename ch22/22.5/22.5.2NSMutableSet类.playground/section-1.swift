
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

var weeksNames: NSMutableSet = NSMutableSet(capacity: 3)

weeksNames.addObject("星期一")
weeksNames.addObject("星期二")
weeksNames.addObject("星期三")
weeksNames.addObject("星期四")
weeksNames.addObject("星期五")
weeksNames.addObject("星期六")
weeksNames.addObject("星期日")

NSLog("星期名字")
NSLog("====   ====")

for item in weeksNames {
    var day = item as! NSString
    NSLog("%@", day)
}

var A: NSMutableSet  = ["a","b","e","d"]
var B: NSMutableSet  = ["d","c","e","f"]
A.minusSet(B as Set<NSObject>)
print("A与B差集 = \(A)")//[b, a]

A.unionSet(B as Set<NSObject>)
print("A与B并集 = \(A)")//[ d,b,e,c,a,f]
