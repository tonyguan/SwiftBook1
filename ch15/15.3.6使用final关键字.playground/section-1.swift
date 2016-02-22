//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

final class Person {
    
    var name: String
    
    final var age: Int
    
    final func description() -> String {
        return "\(name) 年龄是: \(age)"
    }
    
    final class func printClass() ->() {
        print( "Person 打印...")
    }
    
    init (name: String, age: Int) {
        self.name = name
        self.age  = age
    }
}

class Student: Person {                            //编译错误
    
    var school: String
    
    convenience init() {
        self.init(name: "Tony", age: 18, school: "清华大学")
    }
    
    init (name: String, age: Int, school: String) {
        self.school = school
        super.init(name: name, age: age)
    }
    
    override func description() -> String {         //编译错误
        print("父类打印 \(super.description())")
        return "\(name) 年龄是: \(age), 所在学校: \(school)。"
    }
    
    override class func printClass() ->() {      //编译错误
        print( "Student 打印...")
    }
    
    override var age: Int {                        //编译错误
        get {
            return super.age
        }
        set {
            super.age = newValue < 8 ? 8: newValue
        }
    }
}
