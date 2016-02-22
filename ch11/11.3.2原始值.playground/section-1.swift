//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


enum WeekDays: Int {
    case Monday         = 0
    case Tuesday        = 1
    case Wednesday      = 2
    case Thursday       = 3
    case Friday         = 4
}

//enum WeekDays: Int {
//    case Monday = 0, Tuesday, Wednesday, Thursday, Friday
//}

var day  = WeekDays.Friday
day = WeekDays.Wednesday


func writeGreeting(day: WeekDays) {
    
    switch day {
    case .Monday:
        print("星期一好！")
    case .Tuesday :
        print("星期二好！")
    case .Wednesday :
        print("星期三好！")
    case .Thursday :
        print("星期四好！")
    case .Friday :
        print("星期五好！")
    }
    
}

let friday = WeekDays.Friday.rawValue

let thursday = WeekDays(rawValue: 3)

if (WeekDays.Friday.rawValue == 4) {
    print("今天是星期五")
}

writeGreeting(day)
writeGreeting(WeekDays.Friday)
