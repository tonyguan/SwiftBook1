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
    var job: String?
    var salary: Double = 0
    lazy var dept: Department = Department()
}

struct Department {
    let no: Int = 0
    var name: String = ""
}

let emp = Employee()
emp.no = 1000
emp.name = "Martin"
emp.job = "Salesman"
emp.salary = 1250

print(emp.dept.no)
