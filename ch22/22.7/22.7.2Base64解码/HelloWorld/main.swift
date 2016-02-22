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

let fileManager = NSFileManager.defaultManager()
let path = fileManager.currentDirectoryPath
print(path)

//在当前目录下创建dir1目录
let dir = path.stringByAppendingString("/dir1")

do {
    try fileManager.createDirectoryAtPath(dir, withIntermediateDirectories: true, attributes: nil)

    //将Base64字符串转换为字节缓存数据
    let decodedData = NSData(base64EncodedString: base64String, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)
    
    let file = dir.stringByAppendingString("/logo.png")
    
    decodedData!.writeToFile(file, atomically: true)
    
} catch let err as NSError {
    print(err.description)
}
