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

let array = NSArray(array: arrayEmployees)

//BETWEEN
var predicate = NSPredicate(format: "salary BETWEEN {2000, 3000}")
var filteredArray = array.filteredArrayUsingPredicate(predicate)

//OR
predicate = NSPredicate(format: "salary < %d OR %K != %@", 1250, "job", "SALESMAN")
filteredArray = array.filteredArrayUsingPredicate(predicate)

//NOT
predicate = NSPredicate(format: "NOT salary > %d AND %K = %@", 1250, "job", "SALESMAN")
filteredArray = array.filteredArrayUsingPredicate(predicate)

//BEGINSWITH CONTAINS 区分大小写
predicate = NSPredicate(format: "name BEGINSWITH %@ AND job CONTAINS %@", "MAR", "MAN")
filteredArray = array.filteredArrayUsingPredicate(predicate)

//BEGINSWITH CONTAINS 不区分大小写
predicate = NSPredicate(format: "name BEGINSWITH[c] %@ AND job CONTAINS[c] %@", "mar", "man")
filteredArray = array.filteredArrayUsingPredicate(predicate)

//LIKE 区分大小写
predicate = NSPredicate(format: "name LIKE %@ ", "MI??ER")//MILLER
filteredArray = array.filteredArrayUsingPredicate(predicate)

//LIKE 不区分大小写
predicate = NSPredicate(format: "name LIKE[c] %@", "m*")
filteredArray = array.filteredArrayUsingPredicate(predicate)

//IN
predicate = NSPredicate(format: "job IN {'SALESMAN', 'MANAGER'}")
filteredArray = array.filteredArrayUsingPredicate(predicate)

printEmployees(filteredArray)
