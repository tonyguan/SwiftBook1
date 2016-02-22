//
//  main.swift
//  HelloSwiftCallCPP
//
//  Created by 关东升 on 15/9/10.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

//============== 调用C++函数，没有类 =====================
let greeting = "Good morning."
let name = "Tony"

let cHello = sayHello(greeting, name)

let sHello = String.fromCString(cHello)

print(sHello!)


//============== 调用C++类 =====================
let a:Int32 = 10
let b:Int32 = 20

let wrapper = WrapperObjCObject()

var str = String(format: "调用CppObjectCppObject实例方法add: %d+%d=%d", a, b, wrapper.add(a,b))
print(str)

str = String(format: "调用CppObjectCppObject实例方法sub: %d-%d=%d", a, b, wrapper.sub(a,b))
print(str)

str = String(format: "调用CppObjectCppObject静态方法static_add: %d+%d=%d", a, b, WrapperObjCObject.static_add(a,b))
print(str)

str = String(format: "调用CppObjectCppObject静态方法static_sub: %d-%d=%d", a, b, WrapperObjCObject.static_sub(a,b))
print(str)
