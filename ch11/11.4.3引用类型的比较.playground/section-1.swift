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

let emp1 = Employee()
emp1.no = 1000
emp1.name = "Martin"
emp1.job = "Salesman"
emp1.salary = 1250

let emp2 = Employee()
emp2.no = 1000
emp2.name = "Martin"
emp2.job = "Salesman"
emp2.salary = 1250


if emp1 === emp2 {
    print("emp1 === emp2")
}

if emp1 === emp1 {
    print("emp1 === emp1")
}

//if emp1 == emp2 {   //编译失败
//    print("emp1 == emp2")
//}


var dept1 = Department()
dept1.no = 10
dept1.name = "Sales"

var dept2 = Department()
dept2.no = 10
dept2.name = "Sales"

//if dept1 == dept1 {  //编译失败
//    print("dept1 == dept2")
//}
