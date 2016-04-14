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

let salaryPredicate = NSPredicate(format: "salary < %i", 1000)

//使用NSArray
let array = NSArray(array: arrayEmployees)
let filteredArray = array.filteredArrayUsingPredicate(salaryPredicate)

for item in filteredArray {
    let emp = item as! Employee
    print("no: \(emp.no) name:  \(emp.name) salary: \(emp.salary)")
}

//使用NSSet
let set = NSSet(array: arrayEmployees)
let filteredSet = set.filteredSetUsingPredicate(salaryPredicate)

//遍历
for item in filteredSet {
    let emp = item as! Employee
    print("no: \(emp.no) name:  \(emp.name) salary: \(emp.salary)")
}

//使用NSMutableSet
let mutableSet = NSMutableSet(array: arrayEmployees)
mutableSet.filterUsingPredicate(salaryPredicate)

//遍历
for item in mutableSet {
    let emp = item as! Employee
    print("no: \(emp.no) name:  \(emp.name) salary: \(emp.salary)")
}

//创建动态Department集合
let dictDepartments = [dictDept1,dictDept2,dictDept3,dictDept4]

let locationPredicate = NSPredicate(format: "location = %@", "CHICAGO")
//使用NSMutableSet
let departments = NSMutableSet(array: dictDepartments)
departments.filterUsingPredicate(locationPredicate)

print(departments.description)

