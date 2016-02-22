//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


var j = 1
var x = 4

switch x {
case 1:
    j++
case 2:
    j++
case 3:
    j++
case 4:
    j++
    fallthrough
case 5:
    j++
    fallthrough
default:
    j++
}

print("j = \(j)")
