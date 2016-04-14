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

var weeksArray:NSSet = ["星期一","星期二", "星期三", "星期四"]
weeksArray = weeksArray.setByAddingObject("星期五")
weeksArray = weeksArray.setByAddingObjectsFromArray(["星期六","星期日"])

var weeksNames = NSSet(set: weeksArray)

for item in weeksNames {
    var day = item as! NSString
    NSLog("%@", day)
}
