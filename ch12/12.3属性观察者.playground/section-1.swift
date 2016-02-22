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
    var name: String = "Tony" {
        willSet(newNameValue) {
            print("员工name新值：\(newNameValue)")
        }
        didSet(oldNameValue) {
            print("员工name旧值：\(oldNameValue)")
        }
    }
    var job: String?
    var salary: Double = 0
    var dept: Department?
}

struct Department {
    var no: Int = 10 {
        willSet {
            print("部门编号新值：\(newValue)")
        }
        didSet {
            print("部门编号旧值：\(oldValue)")
        }
    }
    var name: String = "RESEARCH"
}

var emp = Employee()
emp.no = 100
emp.name = "Smith"

var dept = Department()
dept.no = 30
