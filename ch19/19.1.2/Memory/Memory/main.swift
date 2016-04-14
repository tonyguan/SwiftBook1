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
    var no: Int
    var name: String
    var job: String
    var salary: Double
    
    init(no: Int, name: String, job: String, salary: Double) {
        self.no = no
        self.name = name
        self.job = job
        self.salary = salary
        print("员工\(name) 已经构造成功。")
    }
    deinit {
        print("员工\(name) 已经析构成功。")
    }
    
}

var ref1: Employee?
var ref2: Employee?
var ref3: Employee?

ref1 = Employee(no: 7698, name: "Blake", job :"Salesman", salary: 1600)

ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil
ref3 = nil

