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

protocol Student: Person {
    var school: String { get set }
}

class Graduate: Student {
    
    var special: String
    
    var firstName: String
    var lastName: String
    var school: String
    
    var fullName: String {
        return self.firstName + "." + self.lastName
    }
    
    func description() -> String {
        return " firstName: \(firstName)\n lastName: \(lastName)\n School: \(school)\n Special: \(special)"
    }
    
    init (firstName: String, lastName: String, school: String, special: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.school = school
        self.special = special
    }
}

let gstudent = Graduate(firstName: "Tom", lastName: "Guan", school: "清华大学", special: "计算机")

print(gstudent.description())


