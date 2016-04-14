//
//  main.swift
//  HelloWorld
//
//  Created by 关东升 on 15/8/25.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

let oldFilteredArray1 = NSMutableArray()
for emp in arrayEmployees  {
    if  emp.salary < 1000 {
        oldFilteredArray1.addObject(emp)
    }
}
print(oldFilteredArray1.count)
//遍历
for item in oldFilteredArray1 {
    let emp = item as! Employee
    print("no: \(emp.no) name:  \(emp.name) salary: \(emp.salary)")
}

let oldFilteredArray2 = NSMutableArray()
for emp in arrayEmployees where emp.salary < 1000 {
    oldFilteredArray2.addObject(emp)
}

print(oldFilteredArray2.count)
//遍历
for item in oldFilteredArray2 {
    let emp = item as! Employee
    print("no: \(emp.no) name:  \(emp.name) salary: \(emp.salary)")
}