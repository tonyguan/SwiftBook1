//
//  DataBase.swift
//  HelloWorld
//
//  Created by 关东升 on 15/8/26.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class Employee: NSObject {
    var no: Int
    var name: String
    var job: String
    var salary: Double
    var hiredate: NSDate
    var dept: Department
    
    init(no: Int, name: String, job: String, salary: Double, hiredate: NSDate, dept: Department) {
        self.no = no
        self.name = name
        self.job = job
        //工资
        self.salary = salary
        //受雇日期
        self.hiredate = hiredate
        self.dept = dept
    }
    
    convenience init(no: Int, name: String, job: String, salary: Double, hiredateString: String, dept: Department) {
        
        let formatter =  NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        //字符串转换为NSDate
        let date = formatter.dateFromString(hiredateString)
        
        self.init(no: no, name: name, job: job, salary: salary, hiredate: date!, dept: dept)
    }
}

class Department: NSObject {
    var no: Int
    var name: String
    //所在地
    var location: String
    
    init(no: Int, name: String, location: String) {
        self.no = no
        self.name = name
        self.location = location
    }
}

//创建Department测试数据
let dept1 = Department(no: 10, name: "ACCOUNTING", location: "NEW YORK")
let dept2 = Department(no: 20, name: "RESEARCH", location: "DALLAS")
let dept3 = Department(no: 30, name: "SALES", location: "CHICAGO")
let dept4 = Department(no: 40, name: "OPERATIONS", location: "BOSTON")

//创建Employee测试数据
let emp1 = Employee(no: 7369, name: "SMITH", job: "CLERK", salary: 800, hiredateString: "2000-12-17", dept: dept2)
let emp2 = Employee(no: 7499, name: "ALLEN", job: "SALESMAN", salary: 1600, hiredateString: "2001-02-20", dept: dept3)
let emp3 = Employee(no: 7521, name: "WARD", job: "SALESMAN", salary: 1250, hiredateString: "2001-02-22", dept: dept3)
let emp4 = Employee(no: 7566, name: "JONES", job: "MANAGER", salary: 2975, hiredateString: "2000-12-17", dept: dept2)
let emp5 = Employee(no: 7654, name: "MARTIN", job: "SALESMAN", salary: 1250, hiredateString: "2000-02-04", dept: dept3)
let emp6 = Employee(no: 7698, name: "BLAKE", job: "MANAGER", salary: 2850, hiredateString: "2001-05-01", dept: dept3)
let emp7 = Employee(no: 7782, name: "CLARK", job: "MANAGER", salary: 2450, hiredateString: "2001-09-06", dept: dept1)
let emp8 = Employee(no: 7788, name: "SCOTT", job: "ANALYST", salary: 3000, hiredateString: "2003-04-19", dept: dept2)
let emp9 = Employee(no: 7839, name: "KING", job: "PRESIDENT", salary: 5000, hiredateString: "2000-08-09", dept: dept1)

let emp10 = Employee(no: 7844, name: "TURNER", job: "SALESMAN", salary: 1500, hiredateString: "2004-09-17", dept: dept3)
let emp11 = Employee(no: 7876, name: "ADAMS", job: "CLERK", salary: 1100, hiredateString: "2001-05-23", dept: dept2)
let emp12 = Employee(no: 7900, name: "JAMES", job: "CLERK", salary: 950, hiredateString: "2001-09-17", dept: dept3)
let emp13 = Employee(no: 7902, name: "FORD", job: "ANALYST", salary: 3000, hiredateString: "2000-01-12", dept: dept2)
let emp14 = Employee(no: 7934, name: "MILLER", job: "CLERK", salary: 1300, hiredateString: "2001-01-23", dept: dept1)

let arrayEmployees = [emp1,emp2,emp3,emp4,emp5,emp6,emp7,emp8,emp9,emp10,emp11,emp12,emp13,emp14]

