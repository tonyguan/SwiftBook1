//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


protocol Editable  {
    mutating func edit()
}

class ClassImp: Editable {
    var name = "ClassImp"
    func edit() {
        print("编辑ClassImp...")
        self.name = "编辑ClassImp..."
    }
}

struct StructImp: Editable {
    var name = "StructImp"
    mutating func edit() {
        print("编辑StructImp...")
        self.name = "编辑StructImp..."
    }
}

enum EnumImp: Editable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    
    mutating func edit() {
        print("编辑EnumImp...")
        self = .Friday
    }
}


var classInstance: Editable = ClassImp()
classInstance.edit()

var structInstance: Editable = StructImp()
structInstance.edit()

var enumInstance: Editable = EnumImp.Monday
enumInstance.edit()
