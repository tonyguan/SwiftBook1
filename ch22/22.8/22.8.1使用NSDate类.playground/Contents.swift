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

// 创建当前时刻对象
let now = NSDate()

let secondsPerDay:NSTimeInterval = 24 * 60 * 60

// 创建一个明天这一时刻对象
let tomorrow = NSDate(timeIntervalSinceNow: secondsPerDay)

// 创建一个昨天这一时刻对象
let yesterday = NSDate(timeIntervalSinceNow: secondsPerDay * -1)

// 创建一个2001-01-01 00:00:00 UTC时刻对象
let date2001 = NSDate(timeIntervalSinceReferenceDate: 0)

// 创建一个1970-01-01 00:00:00 UTC时刻对象
let date1970 = NSDate(timeIntervalSince1970: 0)

let date1 = tomorrow.earlierDate(now)
let date2 = yesterday.laterDate(now)

print(date1.isEqualToDate(date2))

switch date1.compare(date2) {
case .OrderedAscending:
    print("date1 > date2")
case .OrderedSame:
    print("date1 == date2")
case .OrderedDescending:
    print("date1 < date2")
}
