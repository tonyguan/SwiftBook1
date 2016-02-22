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

//^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$
let pattern =  "^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$"

let aString = "关东升@gmail.com"

do {
    let regex = try NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
    //创建一个范围，包括全部的字符串
    let range = NSRange(location:0, length: aString.characters.count)
    
    let result = regex.firstMatchInString(aString, options: .WithoutAnchoringBounds, range: range)
    if result != nil {
        print("匹配")
    } else {
        print("不匹配")
    }
    
    let number = regex.numberOfMatchesInString(aString, options: .WithoutAnchoringBounds, range: range)
    if number > 0 {
        print("匹配")
    } else {
        print("不匹配")
    }
    
} catch let err as NSError {
    print(err.description)
}