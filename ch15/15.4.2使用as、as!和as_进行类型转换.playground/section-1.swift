//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    func description() -> String {
        return "\(name) 年龄是: \(age)"
    }
    convenience init () {
        self.init(name: "Tony")
        self.age = 18
    }
    convenience init (name: String) {
        self.init(name: name, age: 18)
    }
    init (name: String, age: Int) {
        self.name = name
        self.age  = age
    }
}

class Student: Person {
    var school: String
    init (name: String, age: Int, school: String) {
        self.school = school
        super.init(name: name, age: age)
    }
}

class Worker: Person {
    var factory: String
    init (name: String, age: Int, factory: String) {
        self.factory = factory
        super.init(name: name, age: age)
    }
}

///=================示例1=======================
let p1: Person = Student(name: "Tom", age: 20, school: "清华大学")
let p2: Person = Worker(name: "Tom", age: 18, factory: "钢厂")
let p3: Person = Person(name: "Tom", age: 28)
let p4: Student = Student(name: "Ben", age: 40, school: "清华大学")
let p5: Worker = Worker(name: "Tony", age: 28, factory: "钢厂")

//向上转型
let p41: Person = p4 as Person

//向下转型 使用as!
///1.将非可选类型转换为非可选类型
let p11 = p1 as! Student
//let p111 = p2 as! Student //异常
///2.将可选类型为非可选类型
let p6: Person? = Student(name: "Tom", age: 20, school: "清华大学")
let p12 = p6 as! Student
///3.将可选类型为可选类型
let p13 = p6 as! Student?

//向下转型 使用as?
///1.将非可选类型为可选类型
let p21 = p1 as? Student
let p211 = p2 as? Student //nil
///2.将可选类型为可选类型
let p7: Person? = Student(name: "Tom", age: 20, school: "清华大学")
let p22 = p7 as? Student

///=================示例2=======================

let student1 = Student(name: "Tom", age: 18, school: "清华大学")
let student2 = Student(name: "Ben", age: 28, school: "北京大学")
let student3 = Student(name: "Tony", age: 38, school: "香港大学")

let worker1 = Worker(name: "Tom", age: 18, factory: "钢厂")
let worker2 = Worker(name: "Ben", age: 20, factory: "电厂")

let people = [student1, student2, student3, worker1, worker2]

for item in people {
    
    if let student = item as? Student {
        print("Student school: \(student.school)")
    } else if let worker = item as? Worker {
        print("Worker factory: \(worker.factory)")
    }
}

let stud1 = people[0] as? Student
print(stud1)
print(stud1!.name)

let stud2 = people[1] as! Student
print(stud2)
print(stud2.name)
