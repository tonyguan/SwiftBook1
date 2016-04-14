//
//  main.swift
//  Memory
//
//  Created by 关东升 on 15/8/19.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class Employee {
    var no: Int = 0
    var firstName: String
    var lastName: String
    var job: String
    var salary: Double
    
    init(no: Int, firstName: String, lastName: String, job: String, salary: Double) {
        self.no = no
        self.firstName = firstName
        self.lastName = lastName
        self.job = job
        self.salary = salary
        print("员工\(firstName) 已经构造成功。")
    }
    deinit {
        print("员工\(firstName) 已经析构成功。")
    }
    
    lazy var fullName: ()-> String = {
        [weak self]  ()-> String in
        let fn = self!.firstName
        let ln = self!.lastName
        return fn + "." + ln
    }
}

var emp: Employee? = Employee(no: 7698, firstName: "Tony", lastName: "Guan",
    job :"Salesman", salary: 1600)

print(emp!.fullName())

emp = nil
