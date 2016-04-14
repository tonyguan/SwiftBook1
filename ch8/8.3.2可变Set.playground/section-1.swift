//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

var studentList: Set<String>  = ["张三","李四","王五"]
print(studentList)

let removeStudent = studentList.removeFirst()
print(studentList)
print(removeStudent)

studentList.insert("董六")
print(studentList)

let student = "张三"

studentList.remove(student)
print(studentList)

if !studentList.contains(student) {
    print("删除学生:\(student)成功。")
} else {
    print("删除学生:\(student)失败！")
}

print("Set集合长度:\(studentList.count)")
