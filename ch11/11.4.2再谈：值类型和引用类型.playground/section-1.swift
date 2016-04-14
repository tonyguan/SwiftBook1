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
    var dept: Department?
}

struct Department {
    var no: Int = 0
    var name: String = ""
}

var dept = Department()
dept.no = 10
dept.name = "Sales"

let emp = Employee()
emp.no = 1000
emp.name = "Martin"
emp.job = "Salesman"
emp.salary = 1250
emp.dept = dept

func updateDept(inout dept: Department) {
    dept.name = "Research"
}

print("Department更新前:\(dept.name)")
updateDept(&dept)
print("Department更新后:\(dept.name)")

func updateEmp(emp: Employee) {
    emp.job = "Clerk"
}

print("Employee更新前:\(emp.job)")
updateEmp(emp)
print("Employee更新后:\(emp.job)")
