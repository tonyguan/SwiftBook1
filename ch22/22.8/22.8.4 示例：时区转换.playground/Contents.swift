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

let formatter =  NSDateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

extension NSDate {
    
    var toLocalTime: String {
        
        let timeZone = NSTimeZone.localTimeZone()
        let seconds = NSTimeInterval(timeZone.secondsFromGMTForDate(self))
        
        let date = NSDate(timeInterval: seconds, sinceDate: self)
        let dateString = formatter.stringFromDate(date)
        
        return dateString
    }
    
    var toUTCTime: String {
        
        let timeZone = NSTimeZone.localTimeZone()
        let seconds = -1 * NSTimeInterval(timeZone.secondsFromGMTForDate(self))
        
        let date = NSDate(timeInterval: seconds, sinceDate: self)
        let dateString = formatter.stringFromDate(date)
        
        return dateString
    }
}

let birthdayString = "1973-12-08 20:53:21"
let birthday = formatter.dateFromString(birthdayString)

print(birthdayString)
print("UTC时间:\(birthday!.toUTCTime)")
print("本地时间:\(birthday!.toLocalTime)")

