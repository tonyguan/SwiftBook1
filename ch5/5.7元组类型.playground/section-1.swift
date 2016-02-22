//
//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//



var student1 = ("1001", "张三", 30, 90)
print("学生:\(student1.1) 学号:\(student1.0) 语文成绩:\(student1.2) 语文成绩:\(student1.3)")

var student2 = (id:"1002", name:"李四", english_score:32, chinese_score:80)
print("学生:\(student2.name) 学号:\(student2.id) 语文成绩:\(student2.english_score) 语文成绩:\(student2.chinese_score)")

let (id1, name1,age1,score1) = student1

print("学生:\(name1) 学号:\(id1) 语文成绩:\(age1) 语文成绩:\(score1)")

let (id2, name2,_,_) = student2

print("学生:\(name2) 学号:\(id2)")
