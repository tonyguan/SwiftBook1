//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

//16.5.1 值类型扩展构造函数/////////////////////
struct Rectangle {
    
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width   = width
        self.height  = height
    }
    func description() -> String {
        return "Rectangle"
    }
}

//值类型扩展构造函数
extension Rectangle {
    init(length: Double) {
        self.init(width: length, height: length)
    }
}

var rect = Rectangle(width: 320.0, height: 480.0)
print("长方形:\(rect.width) x \(rect.height)")

var square = Rectangle(length: 500.0)
print("正方形:\(square.width) x \(square.height)")

//16.5.1 值类型扩展构造函数/////////////////////


//16.5.2 引用类型扩展构造函数 /////////////////////
class Person {
    var name: String
    var age: Int
    func description() -> String {
        return "\(name) 年龄是: \(age)"
    }
    init (name: String, age: Int) {
        self.name = name
        self.age  = age
    }
}

//引用类型扩展构造函数
extension Person {
    convenience init (name: String) {
        self.init(name: name, age: 8)
    }
}

let p1 = Person(name: "关东升")
print("Person1: \(p1.description())")
let p2 = Person(name: "Tony", age: 28)
print("Person2: \(p2.description())")

//16.5.2 引用类型扩展构造函数 /////////////////////
