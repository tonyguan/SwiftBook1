//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


var studentDictionary = [102 : "张三",105 : "李四", 109 : "王五"]

print("---遍历键---")
for studentID in studentDictionary.keys {
    print("学号：\(studentID)")
}

print("---遍历值---")
for studentName in studentDictionary.values {
    print("学生：\(studentName)")
}

print("---遍历键:值---")
for (studentID, studentName) in studentDictionary {
    print ("\(studentID) : \(studentName)")
}
