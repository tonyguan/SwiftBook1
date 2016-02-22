//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class Employee {
    var no: Int = 0
    var firstName: String = "Tony"
    var lastName: String = "Guan"
    var job: String?
    var salary: Double = 0
    lazy var dept: Department = Department()
    
    var fullName: String {
        get {
            return firstName + "." + lastName
        }
        
        //    set (newFullName) {
        //        var name = newFullName.componentsSeparatedByString(".")
        //        firstName = name[0]
        //        lastName = name[1]
        //    }
        
        set {
            var name = newValue.componentsSeparatedByString(".")
            firstName = name[0]
            lastName = name[1]
        }
        
    }
}

struct Department {
    let no: Int = 0
    var name: String = ""
}

var emp = Employee()
print(emp.fullName)

emp.fullName = "Tom.Guan"
print(emp.fullName)

