//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

var studentList: Set<String>  = ["张三","李四","王五"]

for item in studentList {
    print(item)
}

for (index, value) in studentList.enumerate() {
    print("Item \(index + 1 ) : \(value)")
}
