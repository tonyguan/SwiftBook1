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
print(now)

let formatter =  NSDateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"

 // NSDate转换为字符串
let dateString = formatter.stringFromDate(now)
print(dateString)

 //字符串转换为NSDate
formatter.dateFormat = "yyyy-MM-dd"
let birthdayString = "1973-12-08"

let birthday = formatter.dateFromString(birthdayString)
print(birthday!)
