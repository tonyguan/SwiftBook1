//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


struct Department {
    var no : Int = 0
    var name : String = ""
}

func ==(lhs: Department, rhs: Department) -> Bool {
    return lhs.name == rhs.name && lhs.no == rhs.no
}

func !=(lhs: Department, rhs: Department) -> Bool {
    if (lhs.name != rhs.name || lhs.no != rhs.no) {
        return true
    }
    return false
}


var dept1 = Department()
dept1.no = 10
dept1.name = "Sales"

var dept2 = Department()
dept2.no = 10
dept2.name = "Sales"

if dept1 != dept1 {  //编译失败
    print("dept1 != dept2")
} else {
    print("dept1 == dept2")
}
