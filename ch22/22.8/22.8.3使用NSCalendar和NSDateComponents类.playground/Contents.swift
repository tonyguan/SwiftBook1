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

//创建NSDateComponents对象 
let comps = NSDateComponents()

//设置开幕式时间是2016-8-5
//设置NSDateComponents中的日期
comps.day = 5
//设置NSDateComponents中的月份
comps.month = 8
//设置NSDateComponents中的年份 
comps.year = 2016

//创建日历对象
let calender = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian)
//从日历中获得2016-8-5日期对象
let destinationDate = calender!.dateFromComponents(comps)

let now: NSDate = NSDate()

//获得当前日期到2016-8-5的时间段的NSDateComponents对象
let components = calender!.components(NSCalendarUnit.Day, fromDate: now, toDate: destinationDate!, options: [])

//获得当前日期到2016-8-5相差的天数
let days = components.day

let units: NSCalendarUnit = [ .Year, .Month, .Day, .Hour, .Minute, .Second]
