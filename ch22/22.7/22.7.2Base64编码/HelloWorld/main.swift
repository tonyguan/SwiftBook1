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

let pngURL = "http://www.51work6.com/template/veikei_dz_com_20130920_color/images/logo.png"

let url = NSURL(string: pngURL)
let data = NSData(contentsOfURL: url!)

let base64EncodedString = data!.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.EncodingEndLineWithCarriageReturn)

print(base64EncodedString)