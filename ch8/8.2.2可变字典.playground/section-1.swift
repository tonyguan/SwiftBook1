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

studentDictionary[110] = "董六"

print("班级人数：\(studentDictionary.count)")

let dismissStudent = studentDictionary.removeValueForKey(102)

print("开除的学生：\(dismissStudent!)")

studentDictionary[105] = nil

studentDictionary[109] = "张三"

let replaceStudent = studentDictionary.updateValue("李四", forKey:110)
print("被替换的学生是：\(replaceStudent!)")
