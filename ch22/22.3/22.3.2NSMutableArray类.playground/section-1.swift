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

var weeksNames : NSMutableArray = NSMutableArray(capacity: 3)

weeksNames.addObject("星期一")
weeksNames.addObject("星期二")
weeksNames.addObject("星期三")
weeksNames.addObject("星期四")
weeksNames.addObject("星期五")
weeksNames.addObject("星期六")
weeksNames.addObject("星期日")

NSLog("星期名字")
NSLog("====   ====")

for var i = 0; i < weeksNames.count; i++ {
    var obj = weeksNames.objectAtIndex(i)
    var day = obj as! NSString
    NSLog("%i     %@", i, day)
}

for item in weeksNames {
    var day = item as! NSString
    NSLog("%@", day)
}
