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

let dir = path.stringByAppendingString("/dir1")

do {
    try fileManager.createDirectoryAtPath(dir, withIntermediateDirectories: true, attributes: nil)
    let filePath = dir.stringByAppendingString("/test1.txt")
    
    let content:NSString = "这是一个测试!"
    try content.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding)
    
    let copyFilePath = dir.stringByAppendingString("/test2.txt")
    
    try fileManager.copyItemAtPath(filePath, toPath: copyFilePath)

    let copyFileContent = try NSString(contentsOfFile: copyFilePath, encoding: NSUTF8StringEncoding)
    
    print("读取拷贝文件的内容 : \(copyFileContent)")
    
    if fileManager.fileExistsAtPath(copyFilePath) {
        try fileManager.removeItemAtPath(copyFilePath)
        print("删除test2.txt 成功。")
    }
    
} catch let err as NSError {
    print(err.description)
}
