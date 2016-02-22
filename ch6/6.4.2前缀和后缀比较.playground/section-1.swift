//
//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


import Foundation

let docFolder = [
    "java.docx",
    "JavaBean.docx",
    "Objecitve-C.xlsx",
    "Swift.docx"
]

var wordDocCount = 0
for doc in docFolder {
    if doc.hasSuffix(".docx") {
        ++wordDocCount
    }
}
print("文件夹中Word文档个数是： \(wordDocCount)")

var javaDocCount = 0
for doc in docFolder {
    
    let lowercaseDoc = doc.lowercaseString
    
    if lowercaseDoc.hasPrefix("java") {
        ++javaDocCount
    }
}
print("文件夹中Java相关文档个数是： \(javaDocCount)")

