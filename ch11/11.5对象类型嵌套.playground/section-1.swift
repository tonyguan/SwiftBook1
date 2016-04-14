//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

class Employee {
    
    var no: Int = 0
    var name: String = ""
    var job: String = ""
    var salary: Double = 0
    var dept: Department = Department()
    
    var day: WeekDays = WeekDays.Friday
    
    struct Department {
        var no: Int = 10
        var name: String = "SALES"
    }
    
    enum WeekDays {
        case Monday
        case Tuesday
        case Wednesday
        case Thursday
        case Friday
        
        struct Day {
            static var message: String = "Today is..."
        }
        
    }
    
}


var emp = Employee()

print(emp.dept.name)

print(emp.day)

let friday = Employee.WeekDays.Friday

if emp.day == friday {
    print("相等")
}

print(Employee.WeekDays.Day.message)
