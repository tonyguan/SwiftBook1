//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

class Person {
    var name: String
    var age: Int
    
    func description() -> String {
        return "\(name) 年龄是: \(age)"
    }
    
    init () {
        name = ""
        age  = 1
    }
}

class Student: Person {
    var school: String
    override init () {
        school = ""
        super.init()
        age  = 8
    }
}

let student = Student()
print("学生: \(student.description())")
