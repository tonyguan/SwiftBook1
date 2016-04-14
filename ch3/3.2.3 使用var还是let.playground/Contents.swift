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



import Foundation

class Person {
    var name : String
    var age : Int

    init (name : String, age : Int) {
        self.name = name
        self.age  = age
    }
}

let p1 = Person(name: "Tony", age: 18)
p1.age  = 20

p1 = Person(name: "Tom", age: 18) //编译错误
