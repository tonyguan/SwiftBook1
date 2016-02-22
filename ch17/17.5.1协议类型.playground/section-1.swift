//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

protocol Person {
    
    var firstName: String { get set }
    var lastName: String { get set }
    var fullName: String { get }
    
    func description() -> String
    
}

class Student: Person {
    
    var school: String
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return self.firstName + "." + self.lastName
    }
    
    func description() -> String {
        return "firstName: \(firstName) lastName: \(lastName) school: \(school)"
    }
    
    init (firstName: String, lastName: String, school: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.school = school
    }
}

class Worker: Person {
    
    var factory: String
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return self.firstName + "." + self.lastName
    }
    
    func description() -> String {
        return "firstName: \(firstName) lastName: \(lastName) factory: \(factory)"
    }
    
    init (firstName: String, lastName: String, factory: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.factory = factory
    }
}

let student1: Person = Student(firstName: "Tom", lastName: "Guan", school: "清华大学")
let student2: Person = Student(firstName: "Ben", lastName: "Guan", school: "北京大学")
let student3: Person = Student(firstName: "Tony", lastName: "Guan", school: "香港大学")

let worker1: Person = Worker(firstName: "Tom", lastName: "Zhao", factory: "钢厂")
let worker2: Person = Worker(firstName: "Ben", lastName: "Zhao", factory: "电厂")

let people: [Person] = [student1, student2, student3, worker1, worker2]

for item: Person in people {
    
    if let student = item as? Student {
        print("Student school: \(student.school)")
        print("Student fullName: \(student.fullName)")
        print("Student description: \(student.description())")
    } else if let worker = item as? Worker {
        print("Worker factory: \(worker.factory)")
        print("Worker fullName: \(worker.fullName)")
        print("Worker description: \(worker.description())")
    }
    
}
