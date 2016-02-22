//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

protocol Person {
    var firstName: String { get set }
    var lastName: String { get set }
    var fullName: String { get }
}

class Employee: Person{
    var no: Int = 0
    var job: String?
    var salary: Double = 0
    
    var firstName: String = "Tony"
    var lastName: String = "Guan"
    
    var fullName: String {
        get {
            return self.firstName + "." + self.lastName
        }
        set (newFullName) {
            var name = newFullName.componentsSeparatedByString(".")
            self.firstName = name[0]
            self.lastName = name[1]
        }
    }
}
