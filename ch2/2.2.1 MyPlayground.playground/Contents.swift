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

import UIKit


var str = "Hello, playground"
print(str)

import XCPlayground

let image = UIImage(named: "icon")


let demoView = UIView(frame: CGRectMake(0, 0, 250, 250))
demoView.backgroundColor = UIColor.redColor()

XCPlaygroundPage.currentPage.liveView = demoView

var i = 1

for x in 1..<5 {
    i = i * x

    XCPlaygroundPage.currentPage.captureValue(i, withIdentifier: "i")
}


print(i)

